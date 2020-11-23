<?php

function html_minify($data) {
	$data=str_replace(array("\n","\r","\t")," ",$data);
	for($i=0;$i<100;$i++) $data=str_replace("  "," ",$data);
	$data=str_replace("> <","><",$data);
	return $data;
}

function css_minify($data) {
	$data=str_replace(array("\n","\r","\t"),"",$data);
	for($i=0;$i<100;$i++) $data=str_replace("  "," ",$data);
	foreach(array(":",";","{","}",",") as $temp) $data=str_replace(array(" ".$temp." "," ".$temp,$temp." "),$temp,$data);
	return $data;
}

function js_minify($data) {
	$pos1=strpos($data,"/*");
	$pos2=strpos($data,"*/",$pos1);
	while($pos1!==false && $pos2!==false) {
		$data=substr($data,0,$pos1).substr($data,$pos2+2);
		$pos1=strpos($data,"/*");
		$pos2=strpos($data,"*/",$pos1);
	}
	$data=explode("\n",$data);
	foreach($data as $key=>$val) {
		$pos=strpos($val," // ");
		if($pos!==false) {
			$val=substr($val,0,$pos);
		}
		$val=trim($val);
		if(substr($val,0,2)=="//") {
			$val="";
		}
		if($val!="") {
			$data[$key]=$val;
		} else {
			unset($data[$key]);
		}
	}
	$data=implode("\n",$data);
	return $data;
}

?>