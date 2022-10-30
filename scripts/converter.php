<?php

chdir("files");
$dirs=glob("*");
foreach($dirs as $dir) {
    chdir($dir);
    if(file_exists("${dir}.enc")) {
        require "converter-from-enc.php";
        require "converter-from-ly.php";
        require "converter-make-mp3.php";
    } elseif(file_exists("${dir}.mscz") || file_exists("${dir}.xml") || file_exists("${dir}.mxl")) {
        require "converter-from-xml.php";
        require "converter-make-mp3.php";
    } elseif(file_exists("${dir}.ly")) {
        require "converter-from-ly.php";
        require "converter-make-mp3.php";
    }
    chdir("..");
}
chdir("..");
