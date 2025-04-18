<?php

// PREPARE FILES LIST
$dirs = glob("files/*");
$cats = [];
$songs = [];
$count = 0;
foreach ($dirs as $dir) {
    $hash = basename($dir);
    $temp = explode("-", $hash);
    if (count($temp) != 2) {
        echo "Error amb el hash $hash\n";
        continue;
    }
    $cat = $temp[0];
    $song = $temp[1];
    $cat2 = ucfirst(str_replace("_", " ", $cat));
    $song2 = ucfirst(str_replace("_", " ", $song));
    $info = implode(" - ", metadata("files/$hash/$hash.ly"));
    if (!isset($cats[$cat])) {
        $cats[$cat] = [
            "name" => $cat2,
            "array" => [],
        ];
    }
    $cats[$cat]["array"][] = $hash;
    $files2 = array_merge(
        glob("files/$hash/$hash.enc"),
        glob("files/$hash/$hash.ly"),
        glob("files/$hash/$hash.mscz"),
        glob("files/$hash/$hash.mxl"),
        glob("files/$hash/$hash.xml"),
        glob("files/$hash/$hash.pdf"),
        glob("files/$hash/$hash.midi"),
        glob("files/$hash/$hash-*.midi"),
        glob("files/$hash/$hash.mp3"),
        glob("files/$hash/$hash-*.mp3"),
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
        $last = str_replace("files/$hash/$hash", "", $val);
        $size = filesize($val);
        $files2[$key] = [
            "last" => $last,
            "size" => $size,
        ];
    }
    $files3 = glob("files/$hash/$hash-*.png");
    foreach ($files3 as $key => $val) {
        $last = str_replace("files/$hash/$hash", "", $val);
        $size = getimagesize($val);
        $width = $size[0];
        $height = $size[1];
        $files3[$key] = [
            "last" => $last,
            "width" => $width,
            "height" => $height,
        ];
    }
    $songs[$hash] = [
        "name" => $song2,
        "info" => $info,
        "files" => $files2,
        "pages" => $files3,
    ];
    $count++;
}

// MAKE TITLE
$labels["title"] = str_replace_assoc([
    "__COUNT__" => $count
], $labels["title"]);

// LOAD TEMPLATE
$template = file_get_contents("template/index.html");
$template = explode("<!-- ROWROWROW -->", $template);

// SAVE JSON
$json = json_encode([
    "labels" => [],
    "cats" => $cats,
    "songs" => $songs,
    "template" => [
        html_minify($template[1] . $template[3]),
        html_minify($template[2]),
        html_minify($template[5]),
        html_minify($template[7]),
    ],
]);
$json = js_minify("var data=$json");
file_put_contents("lib/all.data.js", $json);

// SAVE JSON
$json = json_encode($labels);
$json = js_minify("data.labels=$json");
file_put_contents("lib/all.$lang.js", $json);

// PREPARE HTML
$html = [];
$html[] = str_replace_assoc([
    "__TITLE__" => $labels["title"],
    "__DESCRIPTION__" => $labels["description"],
    "__AUTHOR__" => $labels["author"],
    "__KEYWORDS__" => $labels["keywords"],
    "__SEARCH__" => $labels["search"],
    "__MENU__" => $labels["menu"],
    "__ABOUT__" => $labels["about"],
    "__REPO__" => $labels["repo"],
    "__LANG__" => $lang
], $template[0]);
$html[] = str_replace_assoc([
    "__RESULT__" => $labels["result"]
], $template[4]);
$html[] = str_replace_assoc([
    "__TYPE__" => $labels["type"],
    "__FILE__" => $labels["file"],
    "__SIZE__" => $labels["size"],
    "__PLAY__" => $labels["play"]
], $template[6]);
$html[] = $template[8];
$html[] = "<script src='lib/all.data.js?" . md5_file("lib/all.data.js") . "'></script>";
$html[] = "<script src='lib/all.$lang.js?" . md5_file("lib/all.$lang.js") . "'></script>";
$html[] = $template[9];
foreach ($html as $key => $val) {
    $html[$key] = trim($val, "\n");
}
$html = implode("\n", $html);

//~ $html = str_replace("<head>", "<head><base href='./index.$lang.html'/>", $html);
//~ file_put_contents("index.$lang.html", $html);

// SAVE ALL OTHER FILES
list($html,$js,$css) = html_minify2($html);
$js = js_minify($js);
file_put_contents("lib/all.min.js", $js);
$css = css_minify($css);
$css = str_replace("fonts/AtkinsonHyperlegible", "atkinson-hyperlegible/fonts/AtkinsonHyperlegible", $css);
file_put_contents("lib/all.min.css", $css);
$html = js_minify2($html, "lib/all.min.js?" . md5_file("lib/all.min.js"));
$html = css_minify2($html, "lib/all.min.css?" . md5_file("lib/all.min.css"));
$html = str_replace("<head>", "<head><base href='./index.$lang.html'/>", $html);
$html = html_minify($html);
file_put_contents("index.$lang.html", $html);
