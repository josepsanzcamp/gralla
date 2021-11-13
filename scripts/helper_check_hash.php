<?php

$dirs=glob("*");
foreach($dirs as $dir) {
    $temp=explode("-",$dir);
    if(count($temp)!=2) {
        echo "Error found in ${dir}\n";
    }
    $files=glob($dir."/*");
    foreach($files as $file) {
        $file=basename($file);
        if(strncmp($dir,$file,strlen($dir))!=0) {
            echo "Error found in ${file}\n";
        }
    }
}
