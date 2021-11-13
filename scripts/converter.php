<?php

$files=glob("*");
foreach($files as $file) {
    $dir=basename($file);
    chdir($dir);
    if(file_exists("${dir}.enc")) {
        require "converter-from-enc.php";
        require "converter-from-ly.php";
        require "converter-make-mp3.php";
    } elseif(file_exists("${dir}.xml") || file_exists("${dir}.mscz") || file_exists("${dir}.mxl")) {
        require "converter-from-xml.php";
        require "converter-make-mp3.php";
    } elseif(file_exists("${dir}.ly")) {
        require "converter-from-ly.php";
        require "converter-make-mp3.php";
    }
    chdir("..");
}
