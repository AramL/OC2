#!/bin/bash

rm -rf ./tests_size/*

#Tests de tamaño
convert pokemon.bmp -resize 292x290   ./tests_size/pokemon-292x292.bmp
convert pokemon.bmp -resize 416x416   ./tests_size/pokemon-416x416.bmp
convert pokemon.bmp -resize 584x584   ./tests_size/pokemon-584x584.bmp
convert pokemon.bmp -resize 824x824   ./tests_size/pokemon-824x824.bmp
convert pokemon.bmp -resize 1160x1160 ./tests_size/pokemon-1160x1160.bmp
convert pokemon.bmp -resize 1632x1632 ./tests_size/pokemon-1632x1632.bmp
convert pokemon.bmp -resize 2308x2308 ./tests_size/pokemon-2308x2308.bmp
convert pokemon.bmp -resize 3264x3264 ./tests_size/pokemon-3264x3264.bmp
convert pokemon.bmp -resize 4620x4620 ./tests_size/pokemon-4620x4620.bmp


convert game.bmp -resize 292x292   ./tests_size/game-290x290.bmp
convert game.bmp -resize 416x416   ./tests_size/game-416x416.bmp
convert game.bmp -resize 584x584   ./tests_size/game-584x584.bmp
convert game.bmp -resize 824x824   ./tests_size/game-824x824.bmp
convert game.bmp -resize 1160x1160 ./tests_size/game-1160x1160.bmp
convert game.bmp -resize 1632x1632 ./tests_size/game-1632x1632.bmp
convert game.bmp -resize 2308x2308 ./tests_size/game-2308x2308.bmp
convert game.bmp -resize 3264x3264 ./tests_size/game-3264x3264.bmp
convert game.bmp -resize 4620x4620 ./tests_size/game-4620x4620.bmp
