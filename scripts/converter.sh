#!/bin/bash

for i in */*.enc; do
    dir=$(echo $i | cut -d/ -f1)
    cd $dir
    php ../../scripts/converter-from-enc.php
    php ../../scripts/converter-add-book.php
    php ../../scripts/converter-make-pdf.php
    php ../../scripts/converter-make-mp3.php
    cd ..
done

for i in */*.xml; do
    dir=$(echo $i | cut -d/ -f1)
    cd $dir
    php ../../scripts/converter-from-xml.php
    php ../../scripts/converter-add-book.php
    php ../../scripts/converter-make-pdf.php
    php ../../scripts/converter-make-mp3.php
    cd ..
done
