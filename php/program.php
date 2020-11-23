<?php

include("php/metadata.php");
include("php/minify.php");
foreach(array("ca","es","en") as $lang) {
	include("php/langs.php");
	$labels=$labels[$lang];
	include("php/index.php");
	rename("index.html","index.${lang}.html");
	include("php/sitemap.php");
	rename("sitemap.xml","sitemap.${lang}.xml");
}

$data=file_get_contents("template/index.js");
file_put_contents("index.html",$data);

?>