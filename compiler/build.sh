#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: ./build.sh [asm-option] [filename].ml"
    exit 0
fi

./min-caml $2
FILENAME=$2
ASMNAME=${FILENAME/\.ml/\.s}
sed -i "" "/min_caml_print_int/d" $ASMNAME
./../asm/main $1 $ASMNAME > ${FILENAME/\.ml/\.asm}
echo "generated " $ASMNAME " and " ${FILENAME/\.ml/\.asm}
