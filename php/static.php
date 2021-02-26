<?php

// PREPARE FILES LIST
$dirs=glob("files/*");
$hashes=array();
foreach($dirs as $dir) {
	$hash=basename($dir);
	$info=metadata("files/${hash}/${hash}.ly");
	$info2=implode(" - ",$info);
	$info3=implode(", ",$info);
	$info4=mb_strtolower($info3);

	// LOAD TEMPLATE
	$template=file_get_contents("template/index.html");
	$template=explode("<!-- ROWROWROW -->",$template);

	// PREPARE HTML
	$html=array();
	$html[]=str_replace(
		array("__TITLE__","__DESCRIPTION__","__AUTHOR__","__KEYWORDS__","__SEARCH__","__ABOUT__","__REPO__","__LANG__"),
		array($info2." - ".$labels["title"],$info3.", ".$labels["description"],$labels["author"],$info4.", ".$labels["keywords"],$labels["search"],$labels["about"],$labels["repo"],$lang),
		$template[0]);
	$html[]=str_replace(
		array("__RESULT__"),
		array($labels["result"]),
		$template[4]);
	$html[]=str_replace(
		array("__TYPE__","__FILE__","__SIZE__","__PLAY__"),
		array($labels["type"],$labels["file"],$labels["size"],$labels["play"]),
		$template[6]);
	$html[]=$template[8];
	$html[]="<script src='lib/all.${lang}.js'></script>";
	$html[]=$template[9];
	foreach($html as $key=>$val) $html[$key]=trim($val,"\n");
	$html=implode("\n",$html);

	// SAVE ONLY HTML FILE
	list($html,$js,$css)=html_minify2($html);
	$html=html_minify($html);
	$html=js_minify2($html,"lib/all.min.js");
	$html=css_minify2($html,"lib/all.min.css");
	$html=str_replace("<head>","<head><base href='../index.${lang}.html'/>",$html);
	file_put_contents("static/${hash}.${lang}.html",$html);
}

?>