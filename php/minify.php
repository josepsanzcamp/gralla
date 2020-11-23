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

?>