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
echo "**Corriendo mediciones ASM vs C"

for j in 1 ..100
do
  ./build/tp2 -i c diff img/scene0.bmp img/scene400.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a testASM_C
  echo -n " " >> testASM_C
  echo -n j 
done

echo " " >> testASM_C

for j in 1 .. 100
do
  ./build/tp2 -i c diff img/scene0.bmp img/scene400.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a testASM_C
  echo -n " " >> testASM_C
done

echo " "
echo "**graficando"

./python/graficar.py "compare_two" testASM_C "C vs ASM" "CPU Ticks"  "Assembly" "gcc" "lpm" 

echo " "
echo "gracias uriel :D"
