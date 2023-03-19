<?php

chdir("files");
$dirs = glob("*");
foreach ($dirs as $dir) {
    if (!file_exists("$dir/$dir.mxl")) {
        echo "Falta $dir.mxl\n";
    } elseif (!file_exists("$dir/$dir.mscz")) {
        echo "Falta $dir.mscz\n";
    }
}
chdir("..");
