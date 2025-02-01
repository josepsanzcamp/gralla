<?php

function encode_bad_chars($cad, $pad = "_")
{
    static $orig = [
        "á","à","ä","â","é","è","ë","ê","í","ì","ï","î","ó","ò","ö","ô","ú","ù","ü","û","ñ","ç",
        "Á","À","Ä","Â","É","È","Ë","Ê","Í","Ì","Ï","Î","Ó","Ò","Ö","Ô","Ú","Ù","Ü","Û","Ñ","Ç"
    ];
    static $dest = [
        "a","a","a","a","e","e","e","e","i","i","i","i","o","o","o","o","u","u","u","u","n","c",
        "a","a","a","a","e","e","e","e","i","i","i","i","o","o","o","o","u","u","u","u","n","c",
    ];
    $cad = str_replace($orig, $dest, $cad);
    $cad = strtolower($cad);
    $len = strlen($cad);
    for ($i = 0; $i < $len; $i++) {
        $letter = $cad[$i];
        $replace = 1;
        if ($letter >= "a" && $letter <= "z") {
            $replace = 0;
        }
        if ($letter >= "0" && $letter <= "9") {
            $replace = 0;
        }
        if ($replace) {
            $cad[$i] = $pad;
        }
    }
    $cad = prepare_words($cad, $pad);
    return $cad;
}

function prepare_words($cad, $pad = " ")
{
    $count = 1;
    while ($count) {
        $cad = str_replace($pad . $pad, $pad, $cad, $count);
    }
    if (substr($cad, 0, 1) == $pad) {
        $cad = substr($cad, 1);
    }
    if (substr($cad, -1, 1) == $pad) {
        $cad = substr($cad, 0, -1);
    }
    return $cad;
}
