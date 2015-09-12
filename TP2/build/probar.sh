#!/bin/bash
cd ..
make
cd build
./tp2 diff -i asm ../img/scene0.bmp ../img/scene400.bmp
