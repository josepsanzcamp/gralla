<?php

// PREPARE FILES LIST
$dirs=glob("files/*");
$hashes=array();
foreach($dirs as $dir) {
	$hashes[]=basename($dir);
}

// PREPARE TEMPLATE
$template=file_get_contents("template/sitemap.xml");
$template=explode("<!-- ROWROWROW -->",$template);

$xml=array();
$xml[]=$template[0];
foreach($hashes as $hash) {
	$xml[]=str_replace(
		array("__SITE__","__HASH__"),
		array($labels["site"],$hash),
		$template[1]);
}
$xml[]=$template[2];
foreach($xml as $key=>$val) $xml[$key]=trim($val,"\n");
$xml=implode("\n",$xml);
$xml=html_minify($xml);
file_put_contents("sitemap.xml",$xml);

?>