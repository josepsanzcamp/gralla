<?php

include("php/functions.php");
foreach(array("ca","es","en") as $lang) {
	include("php/langs.php");
	$labels=$labels[$lang];
	include("php/index.php");
	rename("index.html","index.${lang}.html");
	include("php/sitemap.php");
	rename("sitemap.xml","sitemap.${lang}.xml");
}

$html=file_get_contents("template/index.js");
$html=str_replace(array("\n","\r","\t")," ",$html);
for($i=0;$i<100;$i++) $html=str_replace("  "," ",$html);
file_put_contents("index.html",$html);

?>