<?php
$f='/tmp/sandbox/mail-robot.log';
$stdin = file_get_contents('php://stdin');
file_put_contents($f, PHP_EOL.$stdin.PHP_EOL, FILE_APPEND);
?>
