#!/bin/bash
cp game.bmp game-2048x2048.bmp
convert game.bmp -resize 1024x1024 game-1024x1024.bmp
convert game.bmp -resize 512x512 game-512x512.bmp
convert game.bmp -resize 256x256 game-256x256.bmp
convert game.bmp -resize 128x128 game-128x128.bmp
convert game.bmp -resize 64x64 game-64x64.bmp

cp pokemon.bmp pokemon-2048x2048.bmp
convert pokemon.bmp -resize 1024x1024 pokemon-1024x1024.bmp
convert pokemon.bmp -resize 512x512 pokemon-512x512.bmp
convert pokemon.bmp -resize 256x256 pokemon-256x256.bmp
convert pokemon.bmp -resize 128x128 pokemon-128x128.bmp
convert pokemon.bmp -resize 64x64 pokemon-64x64.bmp


#Tests de tamaño
convert pokemon.bmp -resize 290x290   ./tests_size/pokemon-290x290.bmp
convert pokemon.bmp -resize 416x416   ./tests_size/pokemon-416x416.bmp
convert pokemon.bmp -resize 584x584   ./tests_size/pokemon-584x584.bmp
convert pokemon.bmp -resize 824x824   ./tests_size/pokemon-824x824.bmp
convert pokemon.bmp -resize 1160x1160 ./tests_size/pokemon-1160x1160.bmp
convert pokemon.bmp -resize 1632x1632 ./tests_size/pokemon-1632x1632.bmp
convert pokemon.bmp -resize 2308x2308 ./tests_size/pokemon-2308x2308.bmp
convert pokemon.bmp -resize 3264x3264 ./tests_size/pokemon-3264x3264.bmp
convert pokemon.bmp -resize 4620x4620 ./tests_size/pokemon-4620x4620.bmp


convert game.bmp -resize 290x290   ./tests_size/game-290x290.bmp
convert game.bmp -resize 416x416   ./tests_size/game-416x416.bmp
convert game.bmp -resize 584x584   ./tests_size/game-584x584.bmp
convert game.bmp -resize 824x824   ./tests_size/game-824x824.bmp
convert game.bmp -resize 1160x1160 ./tests_size/game-1160x1160.bmp
convert game.bmp -resize 1632x1632 ./tests_size/game-1632x1632.bmp
convert game.bmp -resize 2308x2308 ./tests_size/game-2308x2308.bmp
convert game.bmp -resize 3264x3264 ./tests_size/game-3264x3264.bmp
convert game.bmp -resize 4620x4620 ./tests_size/pokemon-4620x4620.bmp
