param(
    [string]$StatsUrl = "http://172.17.35.240/stats",
    [int]$Samples = 140,
    [int]$DelayMs = 180,
    [switch]$AliasZero
)

$seen = @{}
$votes = @{}

function Note-PageBits {
    param([int]$Page, [int]$Bits)
    $script:seen[$Page] = $Bits
    if (-not $script:votes.ContainsKey($Page)) {
        $script:votes[$Page] = @{}
    }
    if (-not $script:votes[$Page].ContainsKey($Bits)) {
        $script:votes[$Page][$Bits] = 0
    }
    $script:votes[$Page][$Bits] = $script:votes[$Page][$Bits] + 1
}

1..$Samples | ForEach-Object {
    Start-Sleep -Milliseconds $DelayMs
    try {
        $stats = (Invoke-WebRequest -UseBasicParsing -Uri $StatsUrl -TimeoutSec 5).Content | ConvertFrom-Json
        if ($null -ne $stats.sdram_diag_page -and $null -ne $stats.sdram_diag_bits) {
            $page = [int]$stats.sdram_diag_page
            $bits = [int]$stats.sdram_diag_bits
            $sym = [int]$stats.sdram_diag
            $firstTime = -not $seen.ContainsKey($page)
            Note-PageBits -Page $page -Bits $bits
            if ($firstTime) {
                "got page=$page data=$bits sym=$sym frame=$($stats.frame) build=$($stats.build)"
            }
        } elseif ($stats.first -and $stats.first.Count -gt 4) {
            $sym = [int]$stats.first[4]
            $page = $sym -shr 2
            $bits = $sym -band 3
            $firstTime = -not $seen.ContainsKey($page)
            Note-PageBits -Page $page -Bits $bits
            if ($firstTime) {
                "got page=$page data=$bits sym=$sym frame=$($stats.frame) build=$($stats.build)"
            }
        }
    } catch {
        "stats miss: $($_.Exception.Message)"
    }
}

foreach ($page in @($votes.Keys)) {
    $bestBits = $null
    $bestCount = -1
    foreach ($bits in $votes[$page].Keys) {
        if ($votes[$page][$bits] -gt $bestCount) {
            $bestCount = $votes[$page][$bits]
            $bestBits = [int]$bits
        }
    }
    if ($null -ne $bestBits) {
        $seen[$page] = $bestBits
    }
}

"PAGES:"
0..15 | ForEach-Object {
    if ($seen.ContainsKey($_)) {
        $counts = ""
        if ($votes.ContainsKey($_)) {
            $counts = " votes=" + (($votes[$_].GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key):$($_.Value)" }) -join ",")
        }
        "$_=$($seen[$_])$counts"
    } else {
        "$_=?"
    }
}

$burstStatus = 0
if ($seen.ContainsKey(0)) { $burstStatus = $burstStatus -bor ($seen[0] -band 3) }
if ($seen.ContainsKey(1)) { $burstStatus = $burstStatus -bor (($seen[1] -band 3) -shl 2) }
if ($seen.ContainsKey(2)) { $burstStatus = $burstStatus -bor (($seen[2] -band 3) -shl 4) }
$burstIndex = 0
3..7 | ForEach-Object {
    if ($seen.ContainsKey($_)) {
        $burstIndex = $burstIndex -bor (($seen[$_] -band 3) -shl (2 * ($_ - 3)))
    }
}
$burstActual = 0
8..15 | ForEach-Object {
    if ($seen.ContainsKey($_)) {
        $burstActual = $burstActual -bor (($seen[$_] -band 3) -shl (2 * ($_ - 8)))
    }
}
function Get-BurstSelftestPattern {
    param([int]$Index)
    switch ($Index) {
        0  { return 0x0000 }
        1  { return 0xffff }
        2  { return 0x00ff }
        3  { return 0x0040 }
        4  { return 0x00bf }
        5  { return 0xff00 }
        6  { return 0xaaaa }
        7  { return 0x5555 }
        8  { return 0x0001 }
        9  { return 0x0002 }
        10 { return 0x0004 }
        11 { return 0x0008 }
        12 { return 0x0010 }
        13 { return 0x0020 }
        14 { return 0x0040 }
        15 { return 0x0080 }
        16 { return 0x0100 }
        17 { return 0x0200 }
        18 { return 0x0400 }
        19 { return 0x0800 }
        20 { return 0x1000 }
        21 { return 0x2000 }
        22 { return 0x4000 }
        23 { return 0x8000 }
        default { return ((($Index -band 0xff) -shl 8) -bor ((-bnot $Index) -band 0xff)) }
    }
}

$burstExpected = Get-BurstSelftestPattern -Index $burstIndex
$burstMask = ($burstActual -bxor $burstExpected)
$burstFail = (($burstStatus -band 0x20) -ne 0)
$burstPass = (($burstStatus -band 0x10) -ne 0)
$burstRunning = (($burstStatus -band 0x08) -ne 0)
$burstDone = (($burstStatus -band 0x04) -ne 0)
"burst_status=0x{0:X2} done={1} running={2} pass={3} fail={4} event_init={5} event_read={6}" -f $burstStatus, $burstDone, $burstRunning, $burstPass, $burstFail, (($burstStatus -band 1) -ne 0), (($burstStatus -band 2) -ne 0)
"burst_first_bad_index={0} actual=0x{1:X4} expected=0x{2:X4} xor_mask=0x{3:X4}" -f $burstIndex, $burstActual, $burstExpected, $burstMask
if (-not $burstPass -and -not $burstFail) {
    $burstState = 0
    $burstNext = 0
    $burstEvents = 0
    $burstCurrentIndex = 0
    $burstAlive = 0
    if ($seen.ContainsKey(3)) { $burstState = $burstState -bor ($seen[3] -band 3) }
    if ($seen.ContainsKey(4)) { $burstState = $burstState -bor (($seen[4] -band 3) -shl 2) }
    if ($seen.ContainsKey(5)) { $burstNext = $burstNext -bor ($seen[5] -band 3) }
    if ($seen.ContainsKey(6)) { $burstNext = $burstNext -bor (($seen[6] -band 3) -shl 2) }
    if ($seen.ContainsKey(7)) { $burstEvents = $burstEvents -bor ($seen[7] -band 3) }
    if ($seen.ContainsKey(8)) { $burstEvents = $burstEvents -bor (($seen[8] -band 3) -shl 2) }
    if ($seen.ContainsKey(9)) { $burstEvents = $burstEvents -bor (($seen[9] -band 3) -shl 4) }
    if ($seen.ContainsKey(10)) { $burstEvents = $burstEvents -bor (($seen[10] -band 3) -shl 6) }
    if ($seen.ContainsKey(11)) { $burstCurrentIndex = $burstCurrentIndex -bor ($seen[11] -band 3) }
    if ($seen.ContainsKey(12)) { $burstCurrentIndex = $burstCurrentIndex -bor (($seen[12] -band 3) -shl 2) }
    if ($seen.ContainsKey(13)) { $burstAlive = $burstAlive -bor ($seen[13] -band 3) }
    if ($seen.ContainsKey(14)) { $burstAlive = $burstAlive -bor (($seen[14] -band 3) -shl 2) }
    if ($seen.ContainsKey(15)) { $burstAlive = $burstAlive -bor (($seen[15] -band 3) -shl 4) }
    "burst_debug state={0} next={1} events=0x{2:X2} current_index={3} alive_low=0x{4:X2}" -f $burstState, $burstNext, $burstEvents, $burstCurrentIndex, $burstAlive
    "burst_events bit0=init bit1=pre/write-clear bit2=refresh bit3=mrs bit4=act_wr bit5=write bit6=act_rd bit7=read"
}

$actual = 0
0..7 | ForEach-Object {
    if ($seen.ContainsKey($_)) {
        $actual = $actual -bor (($seen[$_] -band 3) -shl (2 * $_))
    }
}

$expected = 0
if ($seen.ContainsKey(8) -and $seen.ContainsKey(9)) {
    $badAddr = (($seen[8] -band 3) -bor (($seen[9] -band 3) -shl 2))
} else {
    $badAddr = 0
}

switch ($badAddr -band 15) {
    0  { $expected = 0x0000 }
    1  { $expected = 0x00ff }
    2  { $expected = 0xff00 }
    3  { $expected = 0xffff }
    4  { $expected = 0xa500 }
    5  { $expected = 0x5a00 }
    6  { $expected = 0x0100 }
    7  { $expected = 0x0200 }
    8  { $expected = 0x0400 }
    9  { $expected = 0x0800 }
    10 { $expected = 0x1000 }
    11 { $expected = 0x2000 }
    12 { $expected = 0x4000 }
    13 { $expected = 0x8000 }
    14 { $expected = 0x55aa }
    default { $expected = 0xaa55 }
}
if ($AliasZero) {
    $expected = 0x0000
}

$status = 0
if ($seen.ContainsKey(10)) { $status = $status -bor (($seen[10] -band 3) -shl 4) }
if ($seen.ContainsKey(11)) { $status = $status -bor (($seen[11] -band 3) -shl 2) }
if ($seen.ContainsKey(12)) { $status = $status -bor ($seen[12] -band 3) }

$failSeen = (($status -band 0x20) -ne 0)
$passSeen = (($status -band 0x10) -ne 0)
$running = (($status -band 0x08) -ne 0)
$fpgaMask = (($status -shr 1) -band 3)
$passParity = ($status -band 1)

if ($seen.Count -lt 13) {
    "warning: only captured $($seen.Count)/13 needed pages; rerun with more Samples for a full decode"
}
$byteMask = 0
if (($actual -band 0x00ff) -ne ($expected -band 0x00ff)) { $byteMask = $byteMask -bor 1 }
if (($actual -band 0xff00) -ne ($expected -band 0xff00)) { $byteMask = $byteMask -bor 2 }
"status=0x{0:X2} pass_seen={1} fail_seen={2} running={3} pass_parity={4}" -f $status, $passSeen, $failSeen, $running, $passParity
if ($passSeen -and -not $failSeen) {
    if ($AliasZero) {
        "probe_status=PASS alias-zero probe (addr0 stayed 0 after writing another address)"
    } else {
        "probe_status=PASS current SDRAM probe"
    }
} elseif ($failSeen) {
    "probe_status=FAIL fail_index={0} actual=0x{1:X4} expected=0x{2:X4} byte_mask={3} fpga_mask={4} (1=low,2=high,3=both)" -f $badAddr, $actual, $expected, $byteMask, $fpgaMask
} else {
    $debugState = 0
    $debugIdx = 0
    $debugWritesLow = 0
    $debugReadsLow = 0
    $debugReq = 0
    $debugEvents = 0
    $ctrlEvents = 0
    if ($seen.ContainsKey(0)) { $debugState = $debugState -bor ($seen[0] -band 3) }
    if ($seen.ContainsKey(1)) { $debugState = $debugState -bor (($seen[1] -band 3) -shl 2) }
    if ($seen.ContainsKey(2)) { $debugIdx = $debugIdx -bor ($seen[2] -band 3) }
    if ($seen.ContainsKey(3)) { $debugIdx = $debugIdx -bor (($seen[3] -band 3) -shl 2) }
    if ($seen.ContainsKey(6)) { $ctrlEvents = $ctrlEvents -bor ($seen[6] -band 3) }
    if ($seen.ContainsKey(7)) { $ctrlEvents = $ctrlEvents -bor (($seen[7] -band 3) -shl 2) }
    if ($seen.ContainsKey(4)) { $ctrlEvents = $ctrlEvents -bor (($seen[4] -band 3) -shl 4) }
    if ($seen.ContainsKey(5)) { $ctrlEvents = $ctrlEvents -bor (($seen[5] -band 3) -shl 6) }
    if ($seen.ContainsKey(8)) { $debugReq = $seen[8] -band 3 }
    if ($seen.ContainsKey(13)) { $debugEvents = $debugEvents -bor ($seen[13] -band 3) }
    if ($seen.ContainsKey(14)) { $debugEvents = $debugEvents -bor (($seen[14] -band 3) -shl 2) }
    if ($seen.ContainsKey(9)) { $debugEvents = $debugEvents -bor (($seen[9] -band 3) -shl 4) }
    if ($seen.ContainsKey(15)) { $debugEvents = $debugEvents -bor (($seen[15] -band 3) -shl 6) }
    "debug state={0} idx={1} req_bits=0b{2} tester_events=0x{3:X2} ctrl_events=0x{4:X2}" -f $debugState, $debugIdx, ([Convert]::ToString($debugReq, 2).PadLeft(2,'0')), $debugEvents, $ctrlEvents
    "tester_events bit0=init bit1=clear/write_enter bit2=alias_write_enter bit3=read_enter bit4=wr_ack bit5=rd_req bit6=rd_ack bit7=last_idx"
    "ctrl_events bit0=init_done bit1=wr_req_seen bit2=wr_ack_seen bit3=rd_req_seen bit4=rd_ack_seen bit5=write_cmd bit6=read_cmd bit7=init_pulse"
    "probe_status=INCOMPLETE actual=0x{0:X4} expected_for_index_{1}=0x{2:X4} byte_mask={3} fpga_mask={4}" -f $actual, $badAddr, $expected, $byteMask, $fpgaMask
}
