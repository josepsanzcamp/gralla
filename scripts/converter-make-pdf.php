<?php

function __exec($cmd) {
    ob_start();
    passthru("${cmd} 2>&1");
    return ob_get_clean();
}

// GENERATE THE PDF AND MIDI
$files=glob("*.ly");
foreach($files as $file) {
    $file2=str_replace(".ly",".pdf",$file);
    $file3=str_replace(".ly","-1.pdf",$file);
    $file4=str_replace(".ly","-0.pdf",$file);
    if(!file_exists($file2)) {
        echo "Processing ${file} ... ";
        $output=__exec("lilypond ${file}");
        if(file_exists($file2)) {
            if(file_exists($file3)) {
                rename($file2,$file4);
                __exec("pdfunite ${file4} ${file3} ${file2}");
                unlink($file4);
                unlink($file3);
            }
            $warning=stripos($output,"warning")!==false;
            $error=stripos($output,"error")!==false;
            if($error) {
                echo "OK WITH ERRORS\n";
            } elseif($warning) {
                echo "OK WITH WARNINGS\n";
            } else {
                echo "OK\n";
            }
        } else {
            echo "KO\n";
            $file2=str_replace(".ly",".midi",$file);
            if(file_exists($file2)) {
                unlink($file2);
            }
        }
    }
}
