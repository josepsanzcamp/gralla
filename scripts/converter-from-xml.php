<?php

function __exec($cmd) {
    ob_start();
    passthru("${cmd} 2>&1");
    return ob_get_clean();
}

// CONVERT FROM XML TO PDF AND MIDI
$files=glob("*.xml");
foreach($files as $file) {
    $file2=str_replace(".xml","",$file);
    if(!file_exists("${file2}.pdf")) {
        echo "Processing ${file} ... ";
        // GENERAR FITXER LILYPOND PER COMPATIBILITAT
        __exec("musescore3 --score-meta ${file} > ${file2}.json");
        $json=file_get_contents("${file2}.json");
        unlink("${file2}.json");
        $json=json_decode($json,true);
        $lilypond=array("","");
        $lilypond[]="\header {";
        foreach($json["metadata"]["textFramesData"] as $key=>$val) {
            if(is_array($val)) $val=implode(", ",$val);
            $val=str_replace("\n",", ",$val);
            $lilypond[]="  $key=\"$val\"";
        }
        $lilypond[]="}";
        $lilypond=implode("\n",$lilypond);
        file_put_contents("${file2}.ly",$lilypond);
        // GENERAR FITXERS PDF I MIDI PER TOTES LES PISTES
        __exec("musescore3 --export-to ${file2}.pdf --export-score-parts ${file}");
        __exec("musescore3 --export-to ${file2}.midi ${file}");
        // GENERAR FITXER MIDI PER CADA PISTA
        __exec("musescore3 --score-parts ${file} > ${file2}.json");
        $json=file_get_contents("${file2}.json");
        unlink("${file2}.json");
        $json=json_decode($json,true);
        foreach($json["parts"] as $key=>$val) {
            $data=base64_decode($json["partsBin"][$key]);
            $val=$key+1;
            file_put_contents("${file2}-${val}.mscz",$data);
            __exec("musescore3 --export-to ${file2}-${val}.midi ${file2}-${val}.mscz");
            unlink("${file2}-${val}.mscz");
        }
        if(file_exists("${file2}.pdf")) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
}
