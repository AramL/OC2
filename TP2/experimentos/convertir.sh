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