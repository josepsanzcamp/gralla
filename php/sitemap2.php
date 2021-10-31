<?php

// PREPARE TEMPLATE
$template = file_get_contents("template/sitemap2.xml");
$template = explode("<!-- ROWROWROW -->", $template);

$xml = array();
$xml[] = $template[0];

// PREPARE LANG LIST
foreach ($_labels as $lang => $labels) {
    $xml[] = str_replace_assoc(array(
        "__SITE__" => $labels["site"],
        "__LANG__" => $lang
    ), $template[1]);
}

$xml[] = $template[2];
foreach ($xml as $key => $val) {
    $xml[$key] = trim($val, "\n");
}
$xml = implode("\n", $xml);
$xml = html_minify($xml);
file_put_contents("sitemap.xml", $xml);
