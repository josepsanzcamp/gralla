<?php

// PREPARE FILES LIST
$files=glob("files/*.ly");
$cats=array();
$songs=array();
$count1=0;
$count2=0;
foreach($files as $file) {
	$hash=str_replace(array("files/",".ly"),"",$file);
	$cat=strtok($hash,"-");
	$song=strtok("");
	$cat2=ucfirst(str_replace("_"," ",$cat));
	$song2=ucfirst(str_replace("_"," ",$song));
	$info=implode(" - ",metadata($file));
	if(!isset($cats[$cat])) {
		$cats[$cat]=array(
			"name"=>$cat2,
			"array"=>array(),
		);
		$count1++;
	}
	$cats[$cat]["array"][]=$hash;
	$files2=array(
		"files/${hash}.ly",
		"files/${hash}.pdf",
		"files/${hash}.midi",
		"files/${hash}-1.midi",
		"files/${hash}-2.midi",
		"files/${hash}-3.midi",
		"files/${hash}-4.midi",
		"files/${hash}-5.midi",
		"files/${hash}-6.midi",
		"files/${hash}-7.midi",
		"files/${hash}-8.midi",
		"files/${hash}-9.midi",
		"files/${hash}.mp3",
		"files/${hash}-1.mp3",
		"files/${hash}-2.mp3",
		"files/${hash}-3.mp3",
		"files/${hash}-4.mp3",
		"files/${hash}-5.mp3",
		"files/${hash}-6.mp3",
		"files/${hash}-7.mp3",
		"files/${hash}-8.mp3",
		"files/${hash}-9.mp3",
	);
	foreach($files2 as $key=>$val) {
		if(file_exists($val)) {
			$last=str_replace("files/${hash}","",$val);
			$size=filesize($val);
			$files2[$key]=array(
				"last"=>$last,
				"size"=>$size,
			);
		} else {
			unset($files2[$key]);
		}
	}
	$files2=array_values($files2);
	$songs[$hash]=array(
		"name"=>$song2,
		"info"=>$info,
		"files"=>$files2,
	);
	$count2++;
}

// MAKE TITLE
$labels["title"]=str_replace(array("__COUNT1__","__COUNT2__"),array($count1,$count2),$labels["title"]);

// PREPARE TEMPLATE
$template=file_get_contents("template/index.html");
$template=explode("<!-- ROWROWROW -->",$template);

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
$html[]="<script>var data=${json}</script>";
$html[]=$template[9];
foreach($html as $key=>$val) $html[$key]=trim($val,"\n");
$html=implode("\n",$html);

//~ file_put_contents("index.html",$html);
//~ die();

list($html,$js,$css)=html_minify2($html);
$html=html_minify($html);
$js=js_minify($js);
$css=css_minify($css);
$html=js_minify2($html,"lib/all.min.js");
$html=css_minify2($html,"lib/all.min.css");
file_put_contents("index.html",$html);
$js=str_replace(':p+"',':"lib/audiojs/',$js);
file_put_contents("lib/all.min.js",$js);
$css=str_replace("images/","pdfjs/images/",$css);
file_put_contents("lib/all.min.css",$css);

?>