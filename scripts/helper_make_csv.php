<?php

// phpcs:disable PSR1.Files.SideEffects

require_once "php/metadata.php";
chdir("files");
$files = glob("*/*.ly");

$fixes = [
    "composers" => "composer",
    //~ "subtitles" => "dedication",
    "titles" => "subtitle",
    "poets" => "poet",
];

$metas = [];
$fields = ["hash" => "hash"];
foreach ($files as $file) {
    $hash = str_replace(".ly", "", basename($file));
    $metas[$hash] = metadata($file);
    foreach ($metas[$hash] as $key => $val) {
        if (isset($fixes[$key])) {
            $key = $fixes[$key];
        }
        $fields[$key] = $key;
    }
}
//~ print_r($fields);
//~ die();

$matrix = ["" => $fields];
foreach ($files as $file) {
    $hash = str_replace(".ly", "", basename($file));
    foreach ($fields as $field) {
        $matrix[$hash][$field] = "";
    }
    $matrix[$hash]["hash"] = $hash;
    $meta = metadata($file);
    foreach ($meta as $key => $val) {
        if (isset($fixes[$key])) {
            $key = $fixes[$key];
        }
        if ($matrix[$hash][$key] != "") {
            die("ERROR 1\n");
        }
        $matrix[$hash][$key] = $val;
    }
}
//~ print_r($matrix);
//~ die();

function export_file($file, $data)
{
    foreach ($data as $key => $val) {
        $data[$key] = implode("\t", $val);
    }
    $data = implode("\n", $data) . "\n";
    file_put_contents($file, $data);
}
export_file("php://stdout", $matrix);
