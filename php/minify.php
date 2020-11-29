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

?>