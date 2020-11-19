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

copy("template/index.js","index.html");

?>