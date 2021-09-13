#!/bin/bash

for i in $(ls -1 */*.enc); do
    dir=$(echo $i | cut -d/ -f1)
    cd $dir
    php ../../scripts/converter-from-enc.php
    cd ..
done

for i in $(ls -1 */*.xml */*.mscz */*.mxl); do
    dir=$(echo $i | cut -d/ -f1)
    cd $dir
    php ../../scripts/converter-from-xml.php
    cd ..
done

for i in $(ls -1 */*.midi); do
    dir=$(echo $i | cut -d/ -f1)
    cd $dir
    php ../../scripts/converter-make-mp3.php
    cd ..
done
