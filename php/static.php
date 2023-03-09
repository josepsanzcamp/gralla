<?php

// PREPARE FILES LIST
$dirs = glob("files/*");
$hashes = array();
foreach ($dirs as $dir) {
    $hash = basename($dir);
    $info = metadata("files/$hash/$hash.ly");
    $info2 = implode(" - ", $info);
    $info3 = implode(", ", $info);
    $info4 = mb_strtolower($info3);

    // LOAD TEMPLATE
    $template = file_get_contents("template/index.html");
    $template = explode("<!-- ROWROWROW -->", $template);

    // PREPARE HTML
    $html = array();
    $html[] = str_replace_assoc(array(
        "__TITLE__" => $info2 . " - " . $labels["title"],
        "__DESCRIPTION__" => mb_substr($info3 . ", " . $labels["description"], 0, 160),
        "__AUTHOR__" => $labels["author"],
        "__KEYWORDS__" => $info4 . ", " . $labels["keywords"],
        "__SEARCH__" => $labels["search"],
        "__ABOUT__" => $labels["about"],
        "__REPO__" => $labels["repo"],
        "__LANG__" => $lang
    ), $template[0]);
    $html[] = str_replace_assoc(array(
        "__RESULT__" => $labels["result"]
    ), $template[4]);
    $html[] = str_replace_assoc(array(
        "__TYPE__" => $labels["type"],
        "__FILE__" => $labels["file"],
        "__SIZE__" => $labels["size"],
        "__PLAY__" => $labels["play"]
    ), $template[6]);
    $html[] = $template[8];
    $html[] = "<script src='lib/all.$lang.js'></script>";
    $html[] = $template[9];
    foreach ($html as $key => $val) {
        $html[$key] = trim($val, "\n");
    }
    $html = implode("\n", $html);

    // SAVE ONLY HTML FILE
    list($html,$js,$css) = html_minify2($html);
    $html = html_minify($html);
    $html = js_minify2($html, "lib/all.min.js");
    $html = css_minify2($html, "lib/all.min.css");
    $html = str_replace("<head>", "<head><base href='../index.$lang.html'/>", $html);
    file_put_contents("static/$hash.$lang.html", $html);
}
