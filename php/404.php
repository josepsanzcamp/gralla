<?php

$data = file_get_contents("template/404.html");
$data = html_minify($data);
file_put_contents("404.html", $data);
