<?php

include("php/metadata.php");
include("php/minify.php");
include("php/encode.php");
include("php/langs.php");

foreach($_labels as $lang=>$labels) {
	include("php/index.php");
	include("php/sitemap.php");
	include("php/static.php");
}

include("php/index2.php");
include("php/sitemap2.php");

?>