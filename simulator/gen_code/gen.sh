#!/bin/bash

rm -rf code.bin
python3 gen.py
hexdump -C code.bin
cp code.bin ..
