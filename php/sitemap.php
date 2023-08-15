<?php

// PREPARE TEMPLATE
$template = file_get_contents("template/sitemap.xml");
$template = explode("<!-- ROWROWROW -->", $template);

$xml = array();
$xml[] = $template[0];

// PREPARE FILES LIST
$dirs = glob("files/*");
foreach ($dirs as $dir) {
    $hash = basename($dir);
    $xml[] = str_replace_assoc(array(
        "__SITE__" => $labels["site"],
        "__HASH__" => $hash,
        "__LANG__" => $lang
    ), $template[1]);
}

$xml[] = $template[2];
foreach ($xml as $key => $val) {
    $xml[$key] = trim($val, "\n");
}
$xml = implode("\n", $xml);
$xml = xml_minify($xml);
file_put_contents("sitemap/sitemap.$lang.xml", $xml);
