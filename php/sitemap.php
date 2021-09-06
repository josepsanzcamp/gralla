<?php

// PREPARE TEMPLATE
$template=file_get_contents("template/sitemap.xml");
$template=explode("<!-- ROWROWROW -->",$template);

$xml=array();
$xml[]=$template[0];

// PREPARE FILES LIST
$dirs=glob("files/*");
foreach($dirs as $dir) {
    $hash=basename($dir);
    $xml[]=str_replace(
        array("__SITE__","__HASH__","__LANG__"),
        array($labels["site"],$hash,$lang),
        $template[1]);
}

$xml[]=$template[2];
foreach($xml as $key=>$val) $xml[$key]=trim($val,"\n");
$xml=implode("\n",$xml);
$xml=html_minify($xml);
file_put_contents("sitemap/sitemap.${lang}.xml",$xml);
