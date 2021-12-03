[int[]]$depths = Get-Content .\1-sample.txt
[int[]]$depths = Get-Content .\1.txt

$previous = $depths[0]
$increases = 0
foreach ($depth in $depths[1..($depths.count -1)]) {
    if ($depth -gt $previous) {
        $increases++
    }
    $previous = $depth
}
$increases
