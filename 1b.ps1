[int[]]$depths = Get-Content .\1-sample.txt
[int[]]$depths = Get-Content .\1.txt

$range = 1..($depths.count - 3)

$previous = $depths[0] + $depths[1] + $depths[2]
$increases = 0
foreach ($i in $range) {
    $sum = $depths[$i] + $depths[$i + 1] + $depths[$i + 2]
    if ($sum -gt $previous) {
        $increases++
    }
    $previous = $sum
}
$increases
