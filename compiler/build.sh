#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: ./build.sh [filename].ml"
    exit 0
fi

./min-caml $1
FILENAME=$1
ASMNAME=${FILENAME/\.ml/\.s}
sed -i "" "/min_caml_print_int/d" $ASMNAME
./../asm/main -d $ASMNAME > ${FILENAME/\.ml/\.asm}
echo "generated " $ASMNAME " and " ${FILENAME/\.ml/\.asm}
