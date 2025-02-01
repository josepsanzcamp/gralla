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
    $files = glob("*.mscx");
}
if (!count($files)) {
    $files = glob("*.mxl");
}
if (!count($files)) {
    $files = glob("*.xml");
}
foreach ($files as $file) {
    $file2 = str_replace([".mscz",".mscx",".mxl",".xml"], "", $file);
    if (!file_exists("$file2.ly")) {
        echo "Processant $file [1] ... ";
        // GENERAR FITXER LILYPOND PER COMPATIBILITAT
        __exec2("musescore4portable --score-meta $file > $file2.json");
        $json = file_get_contents("$file2.json");
        unlink("$file2.json");
        $json = json_decode($json, true);
        $lilypond = [];
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
        // GENERAR FITXERS PDF I MIDI PER TOTES LES PISTES
        __exec2("musescore4portable --export-to $file2.pdf $file");
        __exec2("musescore4portable --export-to $file2.midi $file");
        // OBTENIR INFO DE TOTES LES PISTES
        __exec2("musescore4portable --score-parts $file > $file2.json");
        $json = file_get_contents("$file2.json");
        unlink("$file2.json");
        $json = json_decode($json, true);
        if (count($json["parts"]) > 1) {
            rename("$file2.pdf", "$file2-0.pdf");
            // GENERAR FITXER MIDI PER CADA PISTA
            foreach ($json["parts"] as $key => $val) {
                $data = base64_decode($json["partsBin"][$key]);
                $key++;
                file_put_contents("$file2-$key.mscz", $data);
                __exec2("musescore4portable --export-to $file2-$key.midi $file2-$key.mscz");
                __exec2("musescore4portable --export-to $file2-$key.pdf $file2-$key.mscz");
                unlink("$file2-$key.mscz");
            }
            // JUNTAR TOTS ELS PDF EN UN UNIC FITXER
            __exec2("pdfunite $file2-*.pdf $file2.pdf");
            unlink("$file2-0.pdf");
            foreach ($json["parts"] as $key => $val) {
                $key++;
                unlink("$file2-$key.pdf");
            }
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
        __exec2("musescore4portable --export-to $file2.mxl $file");
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
        __exec2("musescore4portable --export-to $file2.mscz $file");
        if (!filesize("$file2.mscz")) {
            unlink("$file2.mscz");
        }
        if (file_exists("$file2.mscz")) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
    if (!file_exists("$file2.midi")) {
        echo "Processant $file [5] ... ";
        // GENERAR FITXER MIDI PER TOTES LES PISTES
        __exec2("musescore4portable --export-to $file2.midi $file");
        // OBTENIR INFO DE TOTES LES PISTES
        __exec2("musescore4portable --score-parts $file > $file2.json");
        $json = file_get_contents("$file2.json");
        unlink("$file2.json");
        $json = json_decode($json, true);
        if (count($json["parts"]) > 1) {
            // GENERAR FITXER MIDI PER CADA PISTA
            foreach ($json["parts"] as $key => $val) {
                $data = base64_decode($json["partsBin"][$key]);
                $key++;
                file_put_contents("$file2-$key.mscz", $data);
                __exec2("musescore4portable --export-to $file2-$key.midi $file2-$key.mscz");
                unlink("$file2-$key.mscz");
            }
        }
        if (file_exists("$file2.midi")) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
}
