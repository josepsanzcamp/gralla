<?php

// PREPARE FILES LIST
$dirs = glob("files/*");
$cats = array();
$songs = array();
$count = 0;
foreach ($dirs as $dir) {
    $hash = basename($dir);
    $temp = explode("-", $hash);
    if (count($temp) != 2) {
        echo "Error amb el hash ${hash}\n";
        continue;
    }
    $cat = $temp[0];
    $song = $temp[1];
    $cat2 = ucfirst(str_replace("_", " ", $cat));
    $song2 = ucfirst(str_replace("_", " ", $song));
    $info = implode(" - ", metadata("files/${hash}/${hash}.ly"));
    if (!isset($cats[$cat])) {
        $cats[$cat] = array(
            "name" => $cat2,
            "array" => array(),
        );
    }
    $cats[$cat]["array"][] = $hash;
    $files2 = array_merge(
        glob("files/${hash}/${hash}.enc"),
        glob("files/${hash}/${hash}.mscz"),
        glob("files/${hash}/${hash}.xml"),
        glob("files/${hash}/${hash}.mxl"),
        glob("files/${hash}/${hash}.ly"),
        glob("files/${hash}/${hash}.pdf"),
        glob("files/${hash}/${hash}-*.pdf"),
        glob("files/${hash}/${hash}.midi"),
        glob("files/${hash}/${hash}-*.midi"),
        glob("files/${hash}/${hash}.mp3"),
        glob("files/${hash}/${hash}-*.mp3"),
        glob("files/${hash}/${hash}.mp4"),
        glob("files/${hash}/${hash}-*.mp4"),
    );
    foreach ($files2 as $key => $val) {
        // TRICK TO REMOVE THE LILYPOND FILES THAT ONLY CONTAINS THE HEADER SECTION
        if (pathinfo($val, PATHINFO_EXTENSION) == "ly") {
            $lines = count(file($val));
            if ($lines <= 20) {
                unset($files2[$key]);
                continue;
            }
        }
        // CONTINUE
        $last = str_replace("files/${hash}/${hash}", "", $val);
        $size = filesize($val);
        $files2[$key] = array(
            "last" => $last,
            "size" => $size,
        );
    }
    $songs[$hash] = array(
        "name" => $song2,
        "info" => $info,
        "files" => $files2,
    );
    $count++;
}

// MAKE TITLE
$labels["title"] = str_replace_assoc(array(
    "__COUNT__" => $count
), $labels["title"]);

// LOAD TEMPLATE
$template = file_get_contents("template/index.html");
$template = explode("<!-- ROWROWROW -->", $template);

// SAVE JSON
$json = json_encode(array(
    "labels" => $labels,
    "cats" => $cats,
    "songs" => $songs,
    "template" => array(
        html_minify($template[1]),
        html_minify($template[2]),
        html_minify($template[3]),
        html_minify($template[5]),
        html_minify($template[7]),
    ),
));
file_put_contents("lib/all.${lang}.js", "var data=${json}");

// PREPARE HTML
$html = array();
$html[] = str_replace_assoc(array(
    "__TITLE__" => $labels["title"],
    "__DESCRIPTION__" => $labels["description"],
    "__AUTHOR__" => $labels["author"],
    "__KEYWORDS__" => $labels["keywords"],
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
$html[] = "<script src='lib/all.${lang}.js'></script>";
$html[] = $template[9];
foreach ($html as $key => $val) {
    $html[$key] = trim($val, "\n");
}
$html = implode("\n", $html);

// SAVE ALL OTHER FILES
list($html,$js,$css) = html_minify2($html);
$html = html_minify($html);
$js = js_minify($js);
$css = css_minify($css);
$html = js_minify2($html, "lib/all.min.js");
$html = css_minify2($html, "lib/all.min.css");
$html = str_replace("<head>", "<head><base href='./index.${lang}.html'/>", $html);
file_put_contents("index.${lang}.html", $html);
$js = str_replace(':p+"', ':"lib/audiojs/', $js);
file_put_contents("lib/all.min.js", $js);
$css = str_replace("images/", "pdfjs/images/", $css);
file_put_contents("lib/all.min.css", $css);
