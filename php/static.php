<?php

// LOAD TEMPLATE
$template = file_get_contents("template/index.html");
$template = explode("<!-- ROWROWROW -->", $template);

// PREPARE HTML
$html = array();
$html[] = $template[0];
$html[] = $template[4];
$html[] = $template[6];
$html[] = $template[8];
$html[] = "<script src='lib/all.$lang.js?" . md5_file("lib/all.$lang.js") . "'></script>";
$html[] = $template[9];
foreach ($html as $key => $val) {
    $html[$key] = trim($val, "\n");
}
$html = implode("\n", $html);

list($html,$js,$css) = html_minify2($html);
$html = html_minify($html);
$html = js_minify2($html, "lib/all.min.js?" . md5_file("lib/all.min.js"));
$html = css_minify2($html, "lib/all.min.css?" . md5_file("lib/all.min.css"));
$html = str_replace("<head>", "<head><base href='../index.$lang.html'/>", $html);

// PREPARE FILES LIST
$dirs = glob("files/*");
$hashes = array();
foreach ($dirs as $dir) {
    $hash = basename($dir);
    $info = metadata("files/$hash/$hash.ly");
    $info2 = implode(" - ", $info);
    $info3 = implode(", ", $info);
    $info4 = mb_strtolower($info3);

    // PREPARE HTML
    $html2 = str_replace_assoc(array(
        "__TITLE__" => $info2 . " - " . $labels["title"],
        "__DESCRIPTION__" => mb_substr($info3 . ", " . $labels["description"], 0, 160),
        "__AUTHOR__" => $labels["author"],
        "__KEYWORDS__" => $info4 . ", " . $labels["keywords"],
        "__SEARCH__" => $labels["search"],
        "__MENU__" => $labels["menu"],
        "__ABOUT__" => $labels["about"],
        "__REPO__" => $labels["repo"],
        "__LANG__" => $lang,
        "__RESULT__" => $labels["result"],
        "__TYPE__" => $labels["type"],
        "__FILE__" => $labels["file"],
        "__SIZE__" => $labels["size"],
        "__PLAY__" => $labels["play"],
    ), $html);

    // SAVE ONLY HTML FILE
    file_put_contents("static/$hash.$lang.html", $html2);
}
