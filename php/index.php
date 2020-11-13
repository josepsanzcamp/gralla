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
		$cats[$cat]=array("name"=>$cat2,"array"=>array());
		$count1++;
	}
	$cats[$cat]["array"][]=$hash;
	$files2=array_merge(
		glob("files/${hash}.ly"),
		glob("files/${hash}.pdf"),
		glob("files/${hash}.midi"),
		glob("files/${hash}-*.midi"),
		glob("files/${hash}.mp3"),
		glob("files/${hash}-*.mp3")
	);
	$pdf="";
	foreach($files2 as $key=>$val) {
		$last=str_replace("files/${hash}","",$val);
		$size=__getmail_gethumansize(filesize($val));
		$files2[$key]=array("last"=>$last,"size"=>$size);
		if(extension($val)=="pdf") $pdf=$val;
	}
	$songs[$hash]=array(
		"name"=>$song2,
		"info"=>$info,
		"files"=>$files2,
		"pdf"=>$pdf,
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
		$template[1],
		$template[2],
		$template[3],
		$template[5],
		$template[7],
	),
));

$html=array();
$html[]=str_replace(
	array("__TITLE__","__DESCRIPTION__","__AUTHOR__","__KEYWORDS__","__SEARCH__"),
	array($labels["title"],$labels["description"],$labels["author"],$labels["keywords"],$labels["search"]),
	$template[0]);
$html[]=str_replace(
	array("__RESULTS__","__ABOUT__","__REPO__"),
	array($labels["results"],$labels["about"],$labels["repo"]),
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
file_put_contents("index.html",$html);

?>