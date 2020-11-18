<?php

include("php/functions.php");
foreach(array("ca","es","en") as $lang) {
	include("php/langs.php");
	$labels=$labels[$lang];
	include("php/index.php");
	rename("index.html","index.${lang}.html");
}

copy("template/index.js","index.html");

include("php/langs.php");
$labels=$labels["ca"];
include("php/sitemap.php");

?>