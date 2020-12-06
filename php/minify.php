<?php

function html_minify($data) {
	$data=str_replace(array("\n","\r","\t")," ",$data);
	do $data=str_replace("  "," ",$data,$count); while($count);
	$data=str_replace("> <","><",$data);
	$data=trim($data);
	return $data;
}

function css_minify($data) {
	$data=str_replace(array("\n","\r","\t"),"",$data);
	do $data=str_replace("  "," ",$data,$count); while($count);
	foreach(array(":",";","{","}",",") as $temp) $data=str_replace(array(" ".$temp." "," ".$temp,$temp." "),$temp,$data);
	$data=trim($data);
	return $data;
}

function js_minify($data) {
	$data=explode("\n",$data);
	foreach($data as $key=>$val) {
		$val=trim($val);
		$pos1=strpos($val,"//");
		$pos2=strpos($val,"/*");
		$len=strlen($val);
		if($pos1!==false || $pos2!==false || $len>200) $val="\n".$val."\n";
		$data[$key]=$val;
	}
	$data=implode(" ",$data);
	do $data=str_replace("  "," ",$data,$count); while($count);
	$data=explode("\n",$data);
	foreach($data as $key=>$val) {
		$val=trim($val);
		$data[$key]=$val;
	}
	$data=implode("\n",$data);
	do $data=str_replace("\n\n","\n",$data,$count); while($count);
	$data=trim($data);
	return $data;
}

function html_minify2($data) {
	// BUSCAR JS
	$js=array();
	$cad1='<script src="';
	$cad2='"></script>';
	$len1=strlen($cad1);
	$len2=strlen($cad2);
	$pos1=strpos($data,$cad1);
	while($pos1!==false) {
		$pos2=strpos($data,$cad2,$pos1);
		$js[]=substr($data,$pos1+$len1,$pos2-$pos1-$len1);
		$data=substr($data,0,$pos1).substr($data,$pos2+$len2);
		$pos1=strpos($data,$cad1);
	}
	foreach($js as $key=>$val) $js[$key]=file_get_contents($val);
	$js=implode("\n",$js);
	// BUSCAR CSS
	$css=array();
	$cad1='<link href="';
	$cad2='" rel="stylesheet">';
	$len1=strlen($cad1);
	$len2=strlen($cad2);
	$pos1=strpos($data,$cad1);
	while($pos1!==false) {
		$pos2=strpos($data,$cad2,$pos1);
		$css[]=substr($data,$pos1+$len1,$pos2-$pos1-$len1);
		$data=substr($data,0,$pos1).substr($data,$pos2+$len2);
		$pos1=strpos($data,$cad1);
	}
	foreach($css as $key=>$val) $css[$key]=file_get_contents($val);
	$css=implode("\n",$css);
	// FIN
	return array($data,$js,$css);
}

function css_minify2($data,$css) {
	$data=str_replace("</head>",'<link href="'.$css.'" rel="stylesheet">'."</head>",$data);
	return $data;
}

function js_minify2($data,$js) {
	$data=str_replace("</body>",'<script src="'.$js.'"></script>'."</body>",$data);
	return $data;
}

?>