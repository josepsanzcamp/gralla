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

// CONVERTIR DES DE MUSICXML O MUSESCORE CAP A PDF I MIDI
$files = glob("*.mscz");
if (!count($files)) {
    $files = glob("*.mxl");
}
if (!count($files)) {
    $files = glob("*.xml");
}
foreach ($files as $file) {
    $file2 = str_replace(array(".mscz",".mxl",".xml"), "", $file);
    if (!file_exists("$file2.ly")) {
        echo "Processant $file [1] ... ";
        // GENERAR FITXER LILYPOND PER COMPATIBILITAT
        __exec2("musescore-portable --score-meta $file > $file2.json");
        $json = file_get_contents("$file2.json");
        unlink("$file2.json");
        $json = json_decode($json, true);
        $lilypond = array();
        $lilypond[] = "\header {";
        foreach ($json["metadata"]["textFramesData"] as $key => $val) {
            if (is_array($val)) {
                $val = implode(" ", $val);
            }
            $val = str_replace("\n", " ", $val);
            for ($count = 1; $count != 0; $val = str_replace("  ", " ", $val, $count));
            $val = trim($val);
            $val = str_replace('"', '\"', $val);
            $lilypond[] = "  $key=\"$val\"";
        }
        $lilypond[] = "}";
        $lilypond = implode("\n", $lilypond);
        file_put_contents("$file2.ly", $lilypond);
        if (file_exists("$file2.ly")) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
    if (!file_exists("$file2.pdf")) {
        echo "Processant $file [2] ... ";
        // OBTENIR INFO DE TOTES LES PISTES
        __exec2("musescore-portable --score-parts $file > $file2.json");
        $json = file_get_contents("$file2.json");
        unlink("$file2.json");
        $json = json_decode($json, true);
        if (count($json["parts"]) > 1) {
            // GENERAR FITXERS PDF I MIDI PER TOTES LES PISTES
            __exec2("musescore-portable --export-to $file2.pdf --export-score-parts $file");
            __exec2("musescore-portable --export-to $file2.midi $file");
            // GENERAR FITXER MIDI PER CADA PISTA
            foreach ($json["parts"] as $key => $val) {
                $data = base64_decode($json["partsBin"][$key]);
                $val = $key + 1;
                file_put_contents("$file2-$val.mscz", $data);
                __exec2("musescore-portable --export-to $file2-$val.midi $file2-$val.mscz");
                unlink("$file2-$val.mscz");
            }
        } else {
            // GENERAR FITXERS PDF I MIDI PER LA UNICA PISTA
            __exec2("musescore-portable --export-to $file2.pdf $file");
            __exec2("musescore-portable --export-to $file2.midi $file");
        }
        if (file_exists("$file2.pdf")) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
    if (!file_exists("$file2.mxl")) {
        echo "Processant $file [3] ... ";
        // GENERAR FITXER XML COMPRIMIT
        __exec2("musescore-portable --export-to $file2.mxl $file");
        if (!filesize("$file2.mxl")) {
            unlink("$file2.mxl");
        }
        if (file_exists("$file2.mxl")) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
    if (!file_exists("$file2.mscz")) {
        echo "Processant $file [4] ... ";
        // GENERAR FITXER MUSESCORE COMPRIMIT
        __exec2("musescore-portable --export-to $file2.mscz $file");
        if (!filesize("$file2.mscz")) {
            unlink("$file2.mscz");
        }
        if (file_exists("$file2.mscz")) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
}
