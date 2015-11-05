#!/bin/bash

rm -rf ./tests_size/*

git checkout ./tests_size/placeholder

echo "Creando imagenes.."


#Tests de tamaño
convert ./backup/pokemon-2.bmp -resize 136x136   ./tests_size/pokemon-136x136.bmp
convert ./backup/pokemon-2.bmp -resize 292x292   ./tests_size/pokemon-292x292.bmp
convert ./backup/pokemon-2.bmp -resize 416x416   ./tests_size/pokemon-416x416.bmp
convert ./backup/pokemon-2.bmp -resize 584x584   ./tests_size/pokemon-584x584.bmp
convert ./backup/pokemon-2.bmp -resize 824x824   ./tests_size/pokemon-824x824.bmp
convert ./backup/pokemon-2.bmp -resize 1160x1160 ./tests_size/pokemon-1160x1160.bmp
convert ./backup/pokemon-2.bmp -resize 1632x1632 ./tests_size/pokemon-1632x1632.bmp
convert ./backup/pokemon-2.bmp -resize 2308x2308 ./tests_size/pokemon-2308x2308.bmp
convert ./backup/pokemon-2.bmp -resize 3264x3264 ./tests_size/pokemon-3264x3264.bmp
convert ./backup/pokemon-2.bmp -resize 4620x4620 ./tests_size/pokemon-4620x4620.bmp
#convert ./backup/pokemon-2.bmp -resize 2320x2320 ./tests_size/pokemon-2320x2320.bmp
#convert ./backup/pokemon-2.bmp -resize 4624x4624 ./tests_size/pokemon-4624x4624.bmp

convert ./backup/game-2.bmp -resize 136x136   ./tests_size/game-136x136.bmp
convert ./backup/game-2.bmp -resize 292x292   ./tests_size/game-292x292.bmp
convert ./backup/game-2.bmp -resize 416x416   ./tests_size/game-416x416.bmp
convert ./backup/game-2.bmp -resize 584x584   ./tests_size/game-584x584.bmp
convert ./backup/game-2.bmp -resize 824x824   ./tests_size/game-824x824.bmp
convert ./backup/game-2.bmp -resize 1160x1160 ./tests_size/game-1160x1160.bmp
convert ./backup/game-2.bmp -resize 1632x1632 ./tests_size/game-1632x1632.bmp
convert ./backup/game-2.bmp -resize 2308x2308 ./tests_size/game-2308x2308.bmp
convert ./backup/game-2.bmp -resize 3264x3264 ./tests_size/game-3264x3264.bmp
convert ./backup/game-2.bmp -resize 4620x4620 ./tests_size/game-4620x4620.bmp
#convert ./backup/game-2.bmp -resize 2320x2320 ./tests_size/game-2320x2320.bmp
#convert ./backup/game-2.bmp -resize 4624x4624 ./tests_size/game-4620x4624.bmp

echo "Listo"


convert ./backup/pokemon-2.bmp -resize 136x136   ./tests_size/pokemon-136x136.bmp