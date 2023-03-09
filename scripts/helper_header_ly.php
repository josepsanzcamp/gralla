<?php

$files = glob("*/*.ly");
foreach ($files as $file) {
    $buffer = file_get_contents($file);
    $hash1 = md5($buffer);
    $buffer = explode("\n", $buffer);
    $stat = 0;
    foreach ($buffer as $key => $val) {
        if ($val == "\\header {") {
            $stat = 1;
        } elseif ($val == "}") {
            $stat = 0;
        } elseif ($stat == 1) {
            $val = explode("=", $val, 2);
            $val[1] = substr($val[1], 1, -1);
            $val[1] = trim($val[1]);
            $val[1] = '"' . $val[1] . '"';
            $val = implode("=", $val);
            $buffer[$key] = $val;
        }
    }
    $buffer = implode("\n", $buffer);
    $hash2 = md5($buffer);
    if ($hash1 != $hash2) {
        echo "Updated $file\n";
        file_put_contents($file, $buffer);
    }
}
