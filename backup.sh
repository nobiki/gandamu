#!/bin/bash

BASE_DIR=$(cd $(dirname $BASH_SOURCE); pwd)
OUT_DIR=${BASE_DIR}/backup

cat ${BASE_DIR}/backup.lst | while read line
do
    mkdir -p ${OUT_DIR}${line}
    rsync -avz gandamu:${line} ${OUT_DIR}${line} > ${BASE_DIR}/backup.log
done


