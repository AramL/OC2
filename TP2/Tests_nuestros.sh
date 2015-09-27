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
echo "**Corriendo mediciones diferencia ASM vs C"

for i in {1..100} 
do 
  ./build/tp2 -i asm diff img/scene0.bmp  img/scene400.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done

echo "" >> ./python/test_difrencia_ASM_C

for i in {1..100} 
do 
  ./build/tp2 -i c diff img/scene0.bmp  img/scene400.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done

echo " "
echo "**graficando"

python ./python/graficar.py 2 ./python/test_difrencia_ASM_C "diferencia (C vs ASM)" "CPU Ticks"  Assembly gcc 

echo " "
echo "vago uriel :D"






echo " "
echo "**Corriendo mediciones blur ASM vs C"

for j in {1..10}
do
  ./build/tp2 -i asm blur img/lena24.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/test_blur_ASM_C
  echo -n " " >> ./python/test_blur_ASM_C
done

echo "" >> ./python/test_blur_ASM_C

echo ""
echo "med asm terminadas"

for r in {1..10}
do
  ./build/tp2 -i c blur img/lena24.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/test_blur_ASM_C
  echo -n " " >> ./python/test_blur_ASM_C
  echo ""
  echo $r
done

echo " "
echo "**graficando"

python ./python/graficar.py 2 ./python/test_blur_ASM_C "blur (C vs ASM)" "CPU Ticks"  Assembly gcc

echo "" 
echo "dame las imagenes"





echo " "
echo "**Corriendo mediciones performance sobre tamaño en difrencia"
echo "**Diferencia en C"

for i in {1..100} 
do 
  ./build/tp2 -i C diff  ./experimentos/test_size/game-290x290 ./experimentos/test_size/pokemon-290x290 | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C


for i in {1..100} 
do 
  ./build/tp2 -i C diff  ./experimentos/test_size/game-416x416 ./experimentos/test_size/pokemon-416x416  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C

for i in {1..100} 
do 
  ./build/tp2 -i C diff  ./experimentos/test_size/game-584x584 ./experimentos/test_size/pokemon-584x584  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C


for i in {1..100} 
do 
  ./build/tp2 -i C diff  ./experimentos/test_size/game-824x824 ./experimentos/test_size/pokemon-824x824  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C

for i in {1..100} 
do 
  ./build/tp2 -i C diff  ./experimentos/test_size/game-1160x1160 ./experimentos/test_size/pokemon-1160x1160  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C


for i in {1..100} 
do 
  ./build/tp2 -i C diff  ./experimentos/test_size/game-1632x1632 ./experimentos/test_size/pokemon-1632x1632  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C

for i in {1..100} 
do 
  ./build/tp2 -i C diff  ./experimentos/test_size/game-2308x2308 ./experimentos/test_size/pokemon-2308x2308  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C

for i in {1..100} 
do 
  ./build/tp2 -i C diff  ./experimentos/test_size/game-3264x3264 ./experimentos/test_size/pokemon-3264x3264  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C

for i in {1..100} 
do 
  ./build/tp2 -i C diff  ./experimentos/test_size/game-4620x4620 ./experimentos/test_size/pokemon-4620x4620  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo " "
echo "**graficando"

python ./python/graficar.py 9 ./python/test_performance_size_C "diferencia (gcc)" "CPU Ticks"  256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb










echo " "
echo "**Corriendo mediciones performance sobre tamaño en difrencia"
echo "**Diferencia en ASM"

for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/test_size/game-290x290 ./experimentos/test_size/pokemon-290x290  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM


for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/test_size/game-416x416 ./experimentos/test_size/pokemon-416x416  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM

for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/test_size/game-584x584 ./experimentos/test_size/pokemon-584x584  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM


for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/test_size/game-824x824 ./experimentos/test_size/pokemon-824x824  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM

for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/test_size/game-1160x1160 ./experimentos/test_size/pokemon-1160x1160  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM


for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/test_size/game-1632x1632 ./experimentos/test_size/pokemon-1632x1632  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM

for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/test_size/game-2308x2308 ./experimentos/test_size/pokemon-2308x2308  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM

for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/test_size/game-3264x3264 ./experimentos/test_size/pokemon-3264x3264  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM

for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/test_size/game-4620x4620 ./experimentos/test_size/pokemon-4620x4620  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo " "
echo "**graficando"

python ./python/graficar.py 9 ./python/test_performance_size_ASM "diferencia (ASM)" "CPU Ticks"  256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb



