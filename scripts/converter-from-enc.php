<?php

// phpcs:disable PSR1.Files.SideEffects

if (!function_exists("__exec1")) {
    function __exec1($cmd)
    {
        ob_start();
        passthru("$cmd 2>&1");
        return ob_get_clean();
    }
}

if (!function_exists("__exec2")) {
    function __exec2($cmd)
    {
        ob_start();
        passthru("$cmd 2>/dev/null");
        return ob_get_clean();
    }
}

// CONVERTIR DES DE ENC CAP A LILYPOND
$files = glob("*.enc");
foreach ($files as $file) {
    $file2 = str_replace(".enc", ".ly", $file);
    if (!file_exists($file2)) {
        echo "Processant $file [1] ... ";
        // GENERAR FITXER LILYPOND
        __exec1("enc2ly $file");
        if (file_exists($file2)) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
    $file2 = str_replace(".enc", ".xml", $file);
    $file3 = str_replace(".enc", ".mxl", $file);
    if (!file_exists($file3)) {
        echo "Processant $file [2] ... ";
        // GENERAR FITXER XML COMPRIMIT
        __exec2("timeout 1 Enc2MusicXML -m $file > $file2");
        if (filesize($file2)) {
            __exec2("../../scripts/extras/xml2mxl $file2 $file3");
        }
        unlink($file2);
        if (file_exists($file3)) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
}

// ARREGLAR PROBLEMAS AMB LES REPETICIONS DELS MIDI
$files = glob("*.ly");
foreach ($files as $file) {
    $buffer = file_get_contents($file);
    $hash1 = md5($buffer);
    $midis = substr_count($buffer, "\\midi");
    if ($midis == 0) {
        $buffer = explode("\n", $buffer);
        $state = 0;
        foreach ($buffer as $key => $val) {
            if ($val == "  \\score {") {
                $state = 1;
                $cache = array();
                $cache[] = "  \\score { \\unfoldRepeats";
            } elseif ($state == 1) {
                if ($val == "    \\layout {}") {
                    $cache[] = "    \\midi {}";
                } elseif ($val == "  }") {
                    $cache[] = "  }";
                    $buffer[$key] = implode("\n", array_merge(array($val), $cache));
                    $state = 0;
                } else {
                    $cache[] = $val;
                }
            }
        }
        $buffer = implode("\n", $buffer);
    }
    $hash2 = md5($buffer);
    if ($hash1 != $hash2) {
        echo "Fixing midi repetitions for $file ... ";
        file_put_contents($file, $buffer);
        echo "FIXED\n";
    }
}

// ARREGLAR PROBLEMAS AMB EL TEMPO
$files = glob("*.ly");
foreach ($files as $file) {
    $buffer = file_get_contents($file);
    $hash1 = md5($buffer);
    $tempos = substr_count($buffer, "\\tempo");
    if ($tempos == 0) {
        $buffer = str_replace("\n{\n", "\n{\n  \\tempo 4=120\n", $buffer);
    } else {
        $pos = strpos($buffer, "\n{\n");
        $pos2 = strpos($buffer, "\n}\n\n", $pos);
        $tempos = substr_count($buffer, "\\tempo", $pos, $pos2 - $pos);
        if ($tempos == 1) {
            $pos3 = strpos($buffer, "\\tempo", $pos);
            $pos4 = strpos($buffer, "=", $pos3);
            $pos5 = strpos($buffer, "\n", $pos4 + 3);
            $buffer2 = substr($buffer, $pos3, $pos5 - $pos3);
            $pos = strpos($buffer, "\n{\n", $pos2);
            while ($pos !== false) {
                $pos2 = strpos($buffer, "\n}\n\n", $pos);
                $tempos = substr_count($buffer, "\\tempo", $pos, $pos2 - $pos);
                if ($tempos == 0) {
                    $buffer = substr_replace($buffer, "\n{\n  $buffer2\n", $pos, 3);
                }
                $pos = strpos($buffer, "\n{\n", $pos2);
            }
        }
    }
    $hash2 = md5($buffer);
    if ($hash1 != $hash2) {
        echo "Fixing tempo issues for $file ... ";
        file_put_contents($file, $buffer);
        echo "FIXED\n";
    }
}
