<?php

include("php/functions.php");

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
	$songs[$hash]=array(
		"name"=>$song2,
		"info"=>$info,
		"ly"=>glob("files/${hash}.ly"),
		"pdf"=>glob("files/${hash}.pdf"),
		"midi"=>array_merge(glob("files/${hash}.midi"),glob("files/${hash}-*.midi")),
		"mp3"=>array_merge(glob("files/${hash}.mp3"),glob("files/${hash}-*.mp3")),
	);
	$count2++;
}

// MAKE TITLE
$title="${count2} partitures i cançons per a gralla en ${count1} gèneres";

// MAKE LABELS
$labels=array(
	"ly"=>"Fitxer font per Lilypond",
	"pdf"=>"Fitxer de document PDF",
	"midi"=>"Fitxer de seqüència MIDI",
	"mp3"=>"Fitxer de so MP3",
);

// PREPARE TEMPLATE
$template=file_get_contents("template/index.html");
$template=explode("<!-- ROWROWROW -->",$template);

$html=array();
$html[]=str_replace(
	array("__TITLE__","__SEARCH__"),
	array($title,"Cercar"),
	$template[0]);

$json=json_encode(array(
	"title"=>$title,
	"labels"=>$labels,
	"cats"=>$cats,
	"songs"=>$songs,
	"template"=>array_slice($template,1,3),
));
$html[]="<script>var data=${json}</script>";

$html[]=$template[4];

$html=implode("\n",$html);
file_put_contents("index.html",$html);

?>