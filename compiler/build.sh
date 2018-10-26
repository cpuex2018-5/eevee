#!/bin/bash

if [ $# -gt 2 ]; then
    echo "Usage: ./build.sh [-d | -v] [filename].ml"
    exit 0
fi

if [ $# -eq 1 ]; then
    FILENAME=$1
else
    FLAG=$1
    FILENAME=$2
fi

ASMNAME=${FILENAME/\.ml/\.s}
BINNAME=${FILENAME/\.ml/\.bin}

./min-caml $FILENAME

# まだprint_intを実装してないため
sed -i "" "/min_caml_print_int/d" $ASMNAME

if [ $# -eq 1 ]; then
    ./../asm/main $ASMNAME
    echo "generated " $ASMNAME " and " $BINNAME
else
    ./../asm/main $FLAG $ASMNAME > ${FILENAME/\.ml/\.asm}
    echo "generated " $ASMNAME ", " $BINNAME " and " ${FILENAME/\.ml/\.asm}
fi
