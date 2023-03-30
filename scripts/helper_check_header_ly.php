<?php

chdir("files");
$files = glob("*/*.ly");
foreach ($files as $file) {
    $buffer = file_get_contents($file);
    $buffer = explode("\n", $buffer);
    $stat = 0;
    foreach ($buffer as $key => $val) {
        if ($val == "\\header {") {
            $stat = 1;
        } elseif ($val == "}") {
            $stat = 0;
        } elseif ($stat == 1) {
            $val = trim($val);
            $val = explode("=", $val, 2);
            if (count($val) != 2) {
                echo "Error found in $file\n";
            } elseif ($val[0] == "") {
                echo "Error found in $file\n";
            } elseif (substr($val[1], 0, 1) != '"') {
                echo "Error found in $file\n";
            } elseif (substr($val[1], -1, 1) != '"') {
                echo "Error found in $file\n";
            }
        }
    }
}
