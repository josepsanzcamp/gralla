<?php

$data = file_get_contents("template/index2.html");
$data = html_minify($data);
file_put_contents("index.html", $data);
file_put_contents("404.html", $data);
