<?php

function __exec($cmd) {
    ob_start();
    passthru("${cmd} 2>/dev/null");
    return ob_get_clean();
}

// GENERATE THE PDF AND MIDI
$files=glob("*.ly");
foreach($files as $file) {
    $file2=str_replace(".ly",".pdf",$file);
    if(!file_exists($file2)) {
        echo "Processing ${file} ... ";
        $output=__exec("lilypond ${file}");
        if(file_exists($file2)) {
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
