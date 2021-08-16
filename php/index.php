<?php

// PREPARE FILES LIST
$dirs=glob("files/*");
$cats=array();
$songs=array();
$count1=0;
$count2=0;
foreach($dirs as $dir) {
	$hash=basename($dir);
	$cat=strtok($hash,"-");
	$song=strtok("");
	$cat2=ucfirst(str_replace("_"," ",$cat));
	$song2=ucfirst(str_replace("_"," ",$song));
	$info=implode(" - ",metadata("files/${hash}/${hash}.ly"));
	if(!isset($cats[$cat])) {
		$cats[$cat]=array(
			"name"=>$cat2,
			"array"=>array(),
		);
		$count1++;
	}
	$cats[$cat]["array"][]=$hash;
	$files2=array_merge(
		glob("files/${hash}/${hash}.enc"),
		glob("files/${hash}/${hash}.xml"),
		glob("files/${hash}/${hash}.ly"),
		glob("files/${hash}/${hash}.pdf"),
		glob("files/${hash}/${hash}-*.pdf"),
		glob("files/${hash}/${hash}.midi"),
		glob("files/${hash}/${hash}-*.midi"),
		glob("files/${hash}/${hash}.mp3"),
		glob("files/${hash}/${hash}-*.mp3"),
	);
	foreach($files2 as $key=>$val) {
		$last=str_replace("files/${hash}/${hash}","",$val);
		$size=filesize($val);
		$files2[$key]=array(
			"last"=>$last,
			"size"=>$size,
		);
	}
	$songs[$hash]=array(
		"name"=>$song2,
		"info"=>$info,
		"files"=>$files2,
	);
	$count2++;
}

// MAKE TITLE
$labels["title"]=str_replace(array("__COUNT1__","__COUNT2__"),array($count1,$count2),$labels["title"]);

// LOAD TEMPLATE
$template=file_get_contents("template/index.html");
$template=explode("<!-- ROWROWROW -->",$template);

// SAVE JSON
$json=json_encode(array(
	"labels"=>$labels,
	"cats"=>$cats,
	"songs"=>$songs,
	"template"=>array(
		html_minify($template[1]),
		html_minify($template[2]),
		html_minify($template[3]),
		html_minify($template[5]),
		html_minify($template[7]),
	),
));
file_put_contents("lib/all.${lang}.js","var data=${json}");

// PREPARE HTML
$html=array();
$html[]=str_replace(
	array("__TITLE__","__DESCRIPTION__","__AUTHOR__","__KEYWORDS__","__SEARCH__","__ABOUT__","__REPO__","__LANG__"),
	array($labels["title"],$labels["description"],$labels["author"],$labels["keywords"],$labels["search"],$labels["about"],$labels["repo"],$lang),
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

// SAVE ALL OTHER FILES
list($html,$js,$css)=html_minify2($html);
$html=html_minify($html);
$js=js_minify($js);
$css=css_minify($css);
$html=js_minify2($html,"lib/all.min.js");
$html=css_minify2($html,"lib/all.min.css");
$html=str_replace("<head>","<head><base href='./index.${lang}.html'/>",$html);
file_put_contents("index.${lang}.html",$html);
$js=str_replace(':p+"',':"lib/audiojs/',$js);
file_put_contents("lib/all.min.js",$js);
$css=str_replace("images/","pdfjs/images/",$css);
file_put_contents("lib/all.min.css",$css);

?>