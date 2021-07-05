#!/bin/bash

for i in */*.enc; do
    dir=$(echo $i | cut -d/ -f1)
    cd $dir
    php ../../scripts/converter-from-enc.php enc ly pdf mp3
    cd ..
done

for i in */*.xml; do
    dir=$(echo $i | cut -d/ -f1)
    cd $dir
    php ../../scripts/converter-from-xml.php xml ly pdf mp3
    cd ..
done

