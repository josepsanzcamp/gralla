<?php

chdir("files");
$dirs = glob("*");
$report = array();
foreach ($dirs as $dir) {
    $key = strtok($dir, "-");
    if (!isset($report[$key])) {
        $report[$key] = 0;
    }
    if (!file_exists("$dir/$dir.ly")) {
        echo "Falta $dir.ly\n";
        $report[$key]++;
    } elseif (!file_exists("$dir/$dir.mscz")) {
        echo "Falta $dir.mscz\n";
        $report[$key]++;
    } elseif (!file_exists("$dir/$dir.mxl")) {
        echo "Falta $dir.mxl\n";
        $report[$key]++;
    }
}
chdir("..");
$report = array_filter($report, function ($val) {
    return $val;
});
$report = print_r($report, true);
$report = explode("\n", $report);
array_shift($report);
array_shift($report);
array_pop($report);
array_pop($report);
$report = implode("\n", $report);
$report .= "\n";
echo $report;
