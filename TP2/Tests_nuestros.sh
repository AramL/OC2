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

for j in {1 2 3 4 5 6 7 8 9 10}
do
  ./build/tp2 -i asm diff img/scene0.bmp img/scene400.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/testASM_C
  echo -n " " >> ./python/testASM_C
done

echo "" >> ./python/testASM_C

for r in {1 2 3 4 5 6 7 8 9 10}
do
  ./build/tp2 -i c diff img/scene0.bmp img/scene400.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/testASM_C
  echo -n " " >> ./python/testASM_C
done

echo " "
echo "**graficando"

python ./python/graficar.py "compare_two" ./python/testASM_C "C vs ASM" "CPU Ticks"  Assembly gcc asdd

echo " "
echo "gracias uriel :D"
