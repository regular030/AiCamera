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

$codes = @()
0..15 | ForEach-Object {
    if ($seen.ContainsKey($_)) {
        $codes += ($seen[$_] -band 3)
    } else {
        $codes += -1
    }
}

"read_window_codes slots0..15=$($codes -join ',')"
"legend: -1=missing, 0=zero/quiet, 1=low-byte activity, 2=high-byte activity, 3=exact expected 0xFF00"
