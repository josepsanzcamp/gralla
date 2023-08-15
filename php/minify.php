<?php

function html_minify($data)
{
    return __minify($data, "html");
}

function css_minify($data)
{
    return __minify($data, "css");
}

function js_minify($data)
{
    return __minify($data, "js");
}

function __minify($data, $type) {
    $hash = md5($data);
    $in = "cache/$hash.in.$type";
    $out = "cache/$hash.out.$type";
    if (!file_exists($in)) {
        file_put_contents($in, $data);
    }
    if (!file_exists($out)) {
        passthru("minify $in > $out");
        if (file_exists($out) && !filesize($out)) {
            unlink($out);
        }
    }
    if (file_exists($out)) {
        $data = file_get_contents($out);
    }
    return $data;
}

function xml_minify($data)
{
    $data = preg_replace('/\>\s+\</m', '><', $data);
    return $data;
}

function html_minify2($data)
{
    // BUSCAR JS
    $js = array();
    $cad1 = '<script src="';
    $cad2 = '"></script>';
    $len1 = strlen($cad1);
    $len2 = strlen($cad2);
    $pos1 = strpos($data, $cad1);
    while ($pos1 !== false) {
        $pos2 = strpos($data, $cad2, $pos1);
        $js[] = substr($data, $pos1 + $len1, $pos2 - $pos1 - $len1);
        $data = substr($data, 0, $pos1) . substr($data, $pos2 + $len2);
        $pos1 = strpos($data, $cad1);
    }
    foreach ($js as $key => $val) {
        $js[$key] = file_get_contents($val);
    }
    $js = implode("\n", $js);
    // BUSCAR CSS
    $css = array();
    $cad1 = '<link href="';
    $cad2 = '" rel="stylesheet" />';
    $len1 = strlen($cad1);
    $len2 = strlen($cad2);
    $pos1 = strpos($data, $cad1);
    while ($pos1 !== false) {
        $pos2 = strpos($data, $cad2, $pos1);
        $css[] = substr($data, $pos1 + $len1, $pos2 - $pos1 - $len1);
        $data = substr($data, 0, $pos1) . substr($data, $pos2 + $len2);
        $pos1 = strpos($data, $cad1);
    }
    foreach ($css as $key => $val) {
        $css[$key] = file_get_contents($val);
    }
    $css = implode("\n", $css);
    // FIN
    return array($data,$js,$css);
}

function css_minify2($data, $css)
{
    $data = str_replace("</head>", '<link href="' . $css . '" rel="stylesheet" />' . "</head>", $data);
    return $data;
}

function js_minify2($data, $js)
{
    $data = str_replace("</body>", '<script src="' . $js . '"></script>' . "</body>", $data);
    return $data;
}
