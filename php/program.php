<?php

include("php/metadata.php");
include("php/minify.php");
include("php/encode.php");
foreach(array("ca","es","en") as $lang) {
	include("php/langs.php");
	$labels=$labels[$lang];
	include("php/index.php");
	include("php/sitemap.php");
	include("php/static.php");
}

$data=file_get_contents("template/index2.html");
$data=html_minify($data);
file_put_contents("index.html",$data);

// PREPARE TEMPLATE
$template=file_get_contents("template/sitemap2.xml");
$template=explode("<!-- ROWROWROW -->",$template);

$xml=array();
$xml[]=$template[0];
foreach(array("ca","es","en") as $lang) {
	$xml[]=str_replace(
		array("__SITE__","__LANG__"),
		array($labels["site"],$lang),
		$template[1]);
}
$xml[]=$template[2];
foreach($xml as $key=>$val) $xml[$key]=trim($val,"\n");
$xml=implode("\n",$xml);
$xml=html_minify($xml);
file_put_contents("sitemap.xml",$xml);

?>