﻿$commands = Get-Content .\2-sample.txt
$commands = Get-Content .\2.txt

$horiz = 0
$depth = 0
foreach ($command in $commands) {
    $action, $qty = $command.split()
    switch ($action) {
        'forward' {$horiz += $qty  }
        'down' {$depth += $qty}
        'up' {$depth -= $qty}
    }
}
$horiz
$depth
$horiz * $depth
