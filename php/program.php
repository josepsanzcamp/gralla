<?php

include("php/functions.php");

$labels=array(
	"title"=>"__COUNT2__ partitures i cançons per a gralla en __COUNT1__ gèneres",
	"search"=>"Cercar",
	"results"=>"Resultats de la cerca",
	"found01"=>"No s'ha trobat cap resultat amb la paraula __TEXT__",
	"found02"=>"No s'ha trobat cap resultat amb les paraules __TEXT__",
	"found11"=>"S'ha trobat __NUM__ resultat amb la paraula __TEXT__",
	"found12"=>"S'ha trobat __NUM__ resultat amb les paraules __TEXT__",
	"found21"=>"S'han trobat __NUM__ resultats amb la paraula __TEXT__",
	"found22"=>"S'han trobat __NUM__ resultats amb les paraules __TEXT__",
	"ly"=>"Fitxer font per Lilypond",
	"pdf"=>"Fitxer de document PDF",
	"midi"=>"Fitxer de seqüència MIDI",
	"mp3"=>"Fitxer de so MP3",
	"pista0"=>" per totes les pistes",
	"pista1"=>" per la pista __NUM__",
	"type"=>"Tipus",
	"file"=>"Fitxer",
	"size"=>"Mida",
	"play"=>"Escoltar",
	"play2"=>"Reproduir",
	"pause2"=>"Pausar",
	"stop2"=>"Parar",
);

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
		$name=str_replace("files/","",$val);
		$type=extension($val);
		$size=__getmail_gethumansize(filesize($val));
		$label=$labels[$type];
		if(in_array($type,array("midi","mp3"))) {
			$num=intval(str_replace(array($hash,$type,".","-"),"",$name));
			if($num==0) $label.=$labels["pista0"];
			if($num!=0) $label.=str_replace("__NUM__",$num,$labels["pista1"]);
		}
		$files2[$key]=array("file"=>$val,"name"=>$name,"type"=>$type,"size"=>$size,"label"=>$label);
		if($type=="pdf") $pdf=$val;
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
	array("__TITLE__","__SEARCH__"),
	array($labels["title"],$labels["search"]),
	$template[0]);
$html[]=str_replace(
	array("__RESULTS__"),
	array($labels["results"]),
	$template[4]);
$html[]=str_replace(
	array("__TYPE__","__FILE__","__SIZE__","__PLAY__"),
	array($labels["type"],$labels["file"],$labels["size"],$labels["play"]),
	$template[6]);
$html[]=$template[8];
$html[]="<script>var data=${json}</script>";
$html[]=$template[9];
$html=implode("\n",$html);
file_put_contents("index.html",$html);

?>