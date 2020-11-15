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
	$files2=array_merge(
		glob("files/${hash}.ly"),
		glob("files/${hash}.pdf"),
		glob("files/${hash}.midi"),
		glob("files/${hash}-*.midi"),
		glob("files/${hash}.mp3"),
		glob("files/${hash}-*.mp3"),
	);
	foreach($files2 as $key=>$val) {
		$last=str_replace("files/${hash}","",$val);
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

$html=explode("\n",$html);
$css=array();
$js=array();
foreach($html as $key=>$val) {
	$val=trim($val);
	$pos1=strpos($val,'<script src="');
	$pos2=strpos($val,'"></script>');
	$pos3=strpos($val,'<link href="');
	$pos4=strpos($val,'" rel="stylesheet">');
	if($pos1!==false && $pos2!==false) {
		$len1=strlen('<script src="');
		$js[]=substr($val,$pos1+$len1,$pos2-$pos1-$len1);
		unset($html[$key]);
	} elseif($pos3!==false && $pos4!==false) {
		$len3=strlen('<link href="');
		$css[]=substr($val,$pos3+$len3,$pos4-$pos3-$len3);
		unset($html[$key]);
	} elseif($val=="</head>") {
		$val='<link href="lib/all.min.css" rel="stylesheet">'.$val;
		$html[$key]=$val;
	} elseif($val=="</body>") {
		$val='<script src="lib/all.min.js"></script>'.$val;
		$html[$key]=$val;
	}
}
$html=implode("\n",$html);
file_put_contents("index.html",$html);

$data=array();
foreach($css as $file) $data[]=str_replace("images/","pdfjs/images/",file_get_contents($file));
$data=implode("\n",$data);
file_put_contents("lib/all.min.css",$data);

$data=array();
foreach($js as $file) $data[]=file_get_contents($file);
$data=implode("\n",$data);
file_put_contents("lib/all.min.js",$data);

?>