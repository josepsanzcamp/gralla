<?php

include("php/metadata.php");
include("php/minify.php");
include("php/encode.php");
foreach(array("ca","es","en") as $lang) {
	include("php/langs.php");
	$labels=$labels[$lang];
	include("php/index.php");
	include("php/sitemap.php");
	include("php/static.php");
}

$data=file_get_contents("template/index.js");
$data=html_minify($data);
file_put_contents("index.html",$data);

?>