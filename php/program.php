<?php

include("php/functions.php");

// PREPARE FILES LIST
$files=glob("files/*.ly");
$array=array();
$count1=0;
$count2=0;
foreach($files as $file) {
	$hash=str_replace(array("files/",".ly"),"",$file);
	$cat=strtok($hash,"-");
	$song=strtok("");
	$cat2=ucfirst(str_replace("_"," ",$cat));
	$song2=ucfirst(str_replace("_"," ",$song));
	$info=implode(" - ",metadata($file));
	if(!isset($array[$cat])) {
		$array[$cat]=array("name"=>$cat2,"array"=>array());
		$count1++;
	}
	$array[$cat]["array"][$song]=array("name"=>$song2,"info"=>$info,"hash"=>$hash);
	$count2++;
}

// MAKE TITLE
$title="${count2} partitures i cançons per a gralla en ${count1} gèneres";

// PREPARE TEMPLATE
$template=file_get_contents("template/index.html");
$template=str_replace(array("img/","css/","js/"),array("template/img/","template/css/","template/js/"),$template);
$template=explode("<!-- ROWROWROW -->",$template);

$html=array();
$html[]=str_replace(
	array("__TITLE__","__SEARCH__"),
	array($title,"Cercar"),
	$template[0]);

$json=json_encode(array("title"=>$title,"array"=>$array,"template"=>array_slice($template,1,3)));
$html[]="<script>var data=${json}</script>";

$html[]=$template[4];

$html=implode("\n",$html);
file_put_contents("index.html",$html);

?>