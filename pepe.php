<?php

$viejo = $argv[1];
$nuevo = $argv[2];

$files = glob("$viejo*");
foreach($files as $file) {
    $file2 = str_replace($viejo, $nuevo, $file);
    rename($file, $file2);
}

$files = glob("$nuevo*/$viejo*");
foreach($files as $file) {
    $file2 = explode("/", $file);
    $file2[1] = str_replace($viejo, $nuevo, $file2[1]);
    $file2 = implode("/", $file2);
    rename($file, $file2);
}
