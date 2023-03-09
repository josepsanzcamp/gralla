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

// CONVERTIR DES DE LILYPOND CAP A PDF I MIDI
$files = glob("*.ly");
foreach ($files as $file) {
    $file2 = str_replace(".ly", ".pdf", $file);
    if (!file_exists($file2)) {
        echo "Processant $file ... ";
        // GENERAR FITXER PDF FENT SERVIR LILYPOND
        $output = __exec1("lilypond $file");
        if (file_exists($file2)) {
            $warning = stripos($output, "warning") !== false;
            $error = stripos($output, "error") !== false;
            if ($error) {
                echo "OK WITH ERRORS\n";
            } elseif ($warning) {
                echo "OK WITH WARNINGS\n";
            } else {
                echo "OK\n";
            }
        } else {
            echo "KO\n";
            $file2 = str_replace(".ly", ".midi", $file);
            if (file_exists($file2)) {
                unlink($file2);
            }
        }
    }
}
