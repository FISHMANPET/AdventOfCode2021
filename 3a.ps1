$codes = Get-Content .\3-sample.txt
$codes = Get-Content .\3.txt

$width = $codes[0].Length
$gamma = ''
$epsilon = ''
foreach ($col in (0..($width - 1))) {
    $zero = 0
    $one = 0
    foreach ($code in $codes) {
        $bit = $code[$col]
        if ($bit -eq '0') {
            $zero++
        } else {
            $one ++
        }
    }
    if ($zero -gt $one) {
        $gamma += '0'
        $epsilon += '1'
    } else {
        $gamma += '1'
        $epsilon += '0'
    }
}
$gamma
$epsilon
($gammaInt = [convert]::toint32($gamma, 2))
($epsilonInt = [convert]::toint32($epsilon, 2))
$gammaInt * $epsilonInt
