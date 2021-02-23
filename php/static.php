<?php

// PREPARE FILES LIST
$dirs=glob("files/*");
$hashes=array();
foreach($dirs as $dir) {
	$hash=basename($dir);
	$info=metadata("files/${hash}/${hash}.ly");
	$info2=implode(" - ",$info);
	$info3=implode(", ",$info);
	$info4=mb_strtolower($info3);
	$data=file_get_contents("template/static.html");
	$data=str_replace(
		array("__TITLE__","__DESCRIPTION__","__AUTHOR__","__KEYWORDS__","__LANG__","__HASH__"),
		array($info2." - ".$labels["title"],$info3.", ".$labels["description"],$labels["author"],$info4.", ".$labels["keywords"],$lang,$hash),
		$data);
	$data=html_minify($data);
	file_put_contents("static/${hash}.${lang}.html",$data);

}

?>