<?php

if(!function_exists("__exec2")) {
    function __exec2($cmd) {
        ob_start();
        passthru("${cmd} 2>/dev/null");
        return ob_get_clean();
    }
}

// CONVERT FROM MUSICXML OR MUSESCORE TO PDF AND MIDI
$files=array_merge(glob("*.mscz"),glob("*.xml"),glob("*.mxl"));
foreach($files as $file) {
    $file2=str_replace(array(".xml",".mscz",".mxl"),"",$file);
    if(!file_exists("${file2}.ly")) {
        echo "Processing ${file} [1] ... ";
        // GENERAR FITXER LILYPOND PER COMPATIBILITAT
        __exec2("musescore3 --score-meta ${file} > ${file2}.json");
        $json=file_get_contents("${file2}.json");
        unlink("${file2}.json");
        $json=json_decode($json,true);
        $lilypond=array();
        $lilypond[]="\header {";
        foreach($json["metadata"]["textFramesData"] as $key=>$val) {
            if(is_array($val)) $val=implode(" ",$val);
            $val=str_replace("\n"," ",$val);
            for($count=1;$count!=0;$val=str_replace("  "," ",$val,$count));
            $val=trim($val);
            $val=str_replace('"','\"',$val);
            $lilypond[]="  $key=\"$val\"";
        }
        $lilypond[]="}";
        $lilypond=implode("\n",$lilypond);
        file_put_contents("${file2}.ly",$lilypond);
        if(file_exists("${file2}.ly")) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
    if(!file_exists("${file2}.pdf")) {
        echo "Processing ${file} [2] ... ";
        // OBTENIR INFO DE TOTES LES PISTES
        __exec2("musescore3 --score-parts ${file} > ${file2}.json");
        $json=file_get_contents("${file2}.json");
        unlink("${file2}.json");
        $json=json_decode($json,true);
        if(count($json["parts"])>1) {
            // GENERAR FITXERS PDF I MIDI PER TOTES LES PISTES
            __exec2("musescore3 --export-to ${file2}.pdf --export-score-parts ${file}");
            __exec2("musescore3 --export-to ${file2}.midi ${file}");
            // GENERAR FITXER MIDI PER CADA PISTA
            foreach($json["parts"] as $key=>$val) {
                $data=base64_decode($json["partsBin"][$key]);
                $val=$key+1;
                file_put_contents("${file2}-${val}.mscz",$data);
                __exec2("musescore3 --export-to ${file2}-${val}.midi ${file2}-${val}.mscz");
                unlink("${file2}-${val}.mscz");
            }
        } else {
            // GENERAR FITXERS PDF I MIDI PER LA UNICA PISTA
            __exec2("musescore3 --export-to ${file2}.pdf ${file}");
            __exec2("musescore3 --export-to ${file2}.midi ${file}");
        }
        if(file_exists("${file2}.pdf")) {
            echo "OK\n";
        } else {
            echo "KO\n";
        }
    }
}
