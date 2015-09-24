#!/bin/bash
clear

echo " "
echo "**Compilando"

make
if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi



echo " "
echo "**Corriendo mediciones"

./build/tp2 -i c diff img/scene0.bmp img/scene40ut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a test1
echo -n " " >> test1

echo " " >> test1

./build/tp2 -i c diff img/scene0.bmp img/scene40ut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a test
echo -n " " >> test1

º
echo " "
echo "**graficando"

#./python/graficar.py salida
