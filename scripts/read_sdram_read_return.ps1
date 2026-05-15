param(
    [string]$StatsUrl = "http://172.17.35.240/stats",
    [int]$Samples = 260,
    [int]$DelayMs = 120
)

$seen = @{}

1..$Samples | ForEach-Object {
    Start-Sleep -Milliseconds $DelayMs
    try {
        $stats = (Invoke-WebRequest -UseBasicParsing -Uri $StatsUrl -TimeoutSec 5).Content | ConvertFrom-Json
        if ($null -ne $stats.sdram_diag_page -and $null -ne $stats.sdram_diag_bits) {
            $page = [int]$stats.sdram_diag_page
            $bits = [int]$stats.sdram_diag_bits
            $firstTime = -not $seen.ContainsKey($page)
            $seen[$page] = $bits
            if ($firstTime) {
                "got page=$page data=$bits frame=$($stats.frame) build=$($stats.build)"
            }
        }
    } catch {
        "stats miss: $($_.Exception.Message)"
    }
}

"PAGES:"
0..15 | ForEach-Object {
    if ($seen.ContainsKey($_)) {
        "$_=$($seen[$_])"
    } else {
        "$_=?"
    }
}

$readOr = 0
0..7 | ForEach-Object {
    if ($seen.ContainsKey($_)) {
        $readOr = $readOr -bor (($seen[$_] -band 3) -shl (2 * $_))
    }
}

$driveInOr = 0
8..15 | ForEach-Object {
    if ($seen.ContainsKey($_)) {
        $driveInOr = $driveInOr -bor (($seen[$_] -band 3) -shl (2 * ($_ - 8)))
    }
}

"read_or_during_latency=0x{0:X4}" -f $readOr
"fpga_drive_input_or=0x{0:X4}" -f $driveInOr
if ($readOr -eq 0) {
    if ($driveInOr -ne 0) {
        "interpretation: FPGA DQ pads can see driven write bits, but SDRAM DQ stayed zero during the read-latency window."
    } else {
        "interpretation: neither the SDRAM read window nor FPGA-driven write window showed DQ input activity."
    }
} else {
    "interpretation: SDRAM DQ had activity during read latency; next check exact sample phase/data compare."
}
