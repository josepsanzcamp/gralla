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

// CONVERTIR DES DE MIDI CAP A MP3
$files = glob("*.pdf");
foreach ($files as $file) {
    $file2 = str_replace(".pdf", "-*.png", $file);
    if (!count(glob($file2))) {
        echo "Processant $file ... ";
        $file3 = str_replace(".pdf", "", $file);
        // Aixo genera el png amb la resolucio per defecte de 150dpi
        __exec1("pdftocairo -png -transp $file $file3");
        // Agafo la llista dels fitxers png per despres
        $pages = glob($file2);
        // Aixo optimitza els png una barbaritat, jo faig servir pngnq,
        // n'hi han d'altres com pngquant o optipng, pero segons les meves
        // proves quanya el pngnq
        __exec1("pngnq $file2");
        // Cal canviar el nom del optimitzat pel no optimitzat, el pngnq
        // treu el .png i afegeix  -nq8.png
        foreach ($pages as $page) {
            $page2 = str_replace(".png", "-nq8.png", $page);
            rename($page2, $page);
        }
        if (count(glob($file2))) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
}
