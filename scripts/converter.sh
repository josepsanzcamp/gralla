#!/bin/bash

for i in *; do
    cd $i
    if [ -f $i.enc ]; then
        php ../../scripts/converter-from-enc.php
        php ../../scripts/converter-from-ly.php
        php ../../scripts/converter-make-mp3.php
    elif [ -f $i.xml -o -f $i.mscz -o -f $i.mxl ]; then
        php ../../scripts/converter-from-xml.php
        php ../../scripts/converter-make-mp3.php
    elif [ -f $i.ly ]; then
        php ../../scripts/converter-from-ly.php
        php ../../scripts/converter-make-mp3.php
    fi
    cd ..
done
