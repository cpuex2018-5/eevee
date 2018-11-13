#!/bin/bash

if [ $# -gt 2 -o $# -lt 1 ]; then
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
# sed -i "" "/min_caml_print_int/d" $ASMNAME

if [ $# -eq 1 ]; then
    ./../asm/main $ASMNAME
else
    ./../asm/main $FLAG $ASMNAME
fi

echo "generated " $ASMNAME " and " $BINNAME
