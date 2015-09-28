#!/bin/bash

clear

make clean



echo " "
echo "**Compilando -O3"

make -f MakefileO3

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi

echo " "
echo "**Corriendo mediciones diferencia ASM vs C"

for i in {1..500} 
do 
  ./build/tp2 -i asm diff ./experimentos/tests_size/game-4620x4620.bmp  ./experimentos/tests_size/pokemon-4620x4620.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..500} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-4620x4620.bmp  ./experimentos/tests_size/pokemon-4620x4620.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done


make clean

echo " "
echo "**Compilando Clang -O3"

make -f MakefileClangO3

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..500} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-4620x4620.bmp  ./experimentos/tests_size/pokemon-4620x4620.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done








make clean


echo " "
echo "**Compilando -O2"

make -f MakefileO2

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..500} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-4620x4620.bmp  ./experimentos/tests_size/pokemon-4620x4620.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done



make clean


echo " "
echo "**Compilando Clang -O2"

make -f MakefileClangO2

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..500} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-4620x4620.bmp  ./experimentos/tests_size/pokemon-4620x4620.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done






make clean


echo " "
echo "**Compilando -O1"

make -f MakefileO1


if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..500} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-4620x4620.bmp  ./experimentos/tests_size/pokemon-4620x4620.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done


make clean


echo " "
echo "**Compilando Clang -O1"

make -f MakefileClangO1


if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..500} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-4620x4620.bmp  ./experimentos/tests_size/pokemon-4620x4620.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done



echo " "
echo "**Compilando Gcc -O0"

make -f MakefileO0


if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..500} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-4620x4620.bmp  ./experimentos/tests_size/pokemon-4620x4620.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done

echo " "
echo "**Compilando Clang -O0"

make -f MakefileClangO0


if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..500} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-4620x4620.bmp  ./experimentos/tests_size/pokemon-4620x4620.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done





echo " "
echo "**graficando"

python ./python/graficar.py 9 ./python/test_difrencia_ASM_C "diferencia (ASM vs C)" "CPU Ticks"  Assembly "gcc (-O3)" "Clang (-O3)" "gcc (-O2)" "Clang (-O2)"  "gcc (-O1)" "Clang (-O1)"  "gcc (-O0)" "Clang (-O0)" 

echo " "
echo "vago uriel :D"



make clean

make -f MakefileO3


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

python ./python/graficar.py 2 ./python/test_blur_ASM_C "blur (ASM vs C)" "CPU Ticks"  Assembly gcc

echo "" 
echo "dame las imagenes"



sh ./experimentos/convertir.sh

echo " "
echo "**Corriendo mediciones performance sobre tamaño en difrencia"
echo "**Diferencia en C"

for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-290x290.bmp ./experimentos/tests_size/pokemon-290x290.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C


for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-416x416.bmp ./experimentos/tests_size/pokemon-416x416.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C

for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-584x584.bmp ./experimentos/tests_size/pokemon-584x584.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C


for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-824x824.bmp ./experimentos/tests_size/pokemon-824x824.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C

for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-1160x1160.bmp ./experimentos/tests_size/pokemon-1160x1160.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C


for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-1632x1632.bmp ./experimentos/tests_size/pokemon-1632x1632.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C

for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-2308x2308.bmp ./experimentos/tests_size/pokemon-2308x2308.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C

for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-3264x3264.bmp ./experimentos/tests_size/pokemon-3264x3264.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
  echo -n " " >> ./python/test_performance_size_C
done


echo "" >> ./python/test_performance_size_C

for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-4620x4620.bmp ./experimentos/tests_size/pokemon-4620x4620.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C
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
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-290x290.bmp ./experimentos/tests_size/pokemon-290x290.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM


for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-416x416.bmp ./experimentos/tests_size/pokemon-416x416.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM

for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-584x584.bmp ./experimentos/tests_size/pokemon-584x584.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM


for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-824x824.bmp ./experimentos/tests_size/pokemon-824x824.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM

for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-1160x1160.bmp ./experimentos/tests_size/pokemon-1160x1160.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM


for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-1632x1632.bmp ./experimentos/tests_size/pokemon-1632x1632.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM

for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-2308x2308.bmp ./experimentos/tests_size/pokemon-2308x2308.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM

for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-3264x3264.bmp ./experimentos/tests_size/pokemon-3264x3264.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo "" >> ./python/test_performance_size_ASM

for i in {1..100} 
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-4620x4620.bmp ./experimentos/tests_size/pokemon-4620x4620.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_ASM
  echo -n " " >> ./python/test_performance_size_ASM
done


echo " "
echo "**graficando"

python ./python/graficar.py 9 ./python/test_performance_size_ASM "diferencia (ASM)" "CPU Ticks"  256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb




make clean

echo " "
echo "**Compilando Clang O3"

make -f MakefileClangO3

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo " "
echo "**Corriendo mediciones diferencia ASM vs C"

for i in {1..100} 
do 
  ./build/tp2 -i asm diff img/scene0.bmp  img/scene400.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C_Clang
  echo -n " " >> ./python/test_difrencia_ASM_C_Clang
done

echo "" >> ./python/test_difrencia_ASM_C_Clang

for i in {1..100} 
do 
  ./build/tp2 -i c diff img/scene0.bmp  img/scene400.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C_Clang
  echo -n " " >> ./python/test_difrencia_ASM_C_Clang
done

echo " "
echo "**graficando"

python ./python/graficar.py 2 ./python/test_difrencia_ASM_C_Clang "diferencia (ASM vs C)" "CPU Ticks"  Assembly clang 

echo " "
echo "vago uriel :D"






echo " "
echo "**Corriendo mediciones blur ASM vs C"

for j in {1..10}
do
  ./build/tp2 -i asm blur img/lena24.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/test_blur_ASM_C_vsClang
  echo -n " " >> ./python/test_blur_ASM_C_vsClang
done

echo "" >> ./python/test_blur_ASM_C_vsClang

echo ""
echo "med asm terminadas"

for r in {1..10}
do
  ./build/tp2 -i c blur img/lena24.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/test_blur_ASM_C_vsClang
  echo -n " " >> ./python/test_blur_ASM_C_vsClang
  echo ""
  echo $r
done

echo " "
echo "**graficando"

python ./python/graficar.py 2 ./python/test_blur_ASM_C_vsClang "blur (ASM vs C)" "CPU Ticks"  Assembly clang

echo "" 
echo "dame las imagenes"





echo " "
echo "**Corriendo mediciones performance sobre tamaño en difrencia"
echo "**Diferencia en C"

for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-290x290.bmp ./experimentos/tests_size/pokemon-290x290.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C_clang
  echo -n " " >> ./python/test_performance_size_C_clang
done


echo "" >> ./python/test_performance_size_C_clang


for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-416x416.bmp ./experimentos/tests_size/pokemon-416x416.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C_clang
  echo -n " " >> ./python/test_performance_size_C_clang
done


echo "" >> ./python/test_performance_size_C_clang

for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-584x584.bmp ./experimentos/tests_size/pokemon-584x584.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C_clang
  echo -n " " >> ./python/test_performance_size_C_clang
done


echo "" >> ./python/test_performance_size_C_clang


for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-824x824.bmp ./experimentos/tests_size/pokemon-824x824.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C_clang
  echo -n " " >> ./python/test_performance_size_C_clang
done


echo "" >> ./python/test_performance_size_C_clang

for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-1160x1160.bmp ./experimentos/tests_size/pokemon-1160x1160.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C_clang
  echo -n " " >> ./python/test_performance_size_C_clang
done


echo "" >> ./python/test_performance_size_C_clang


for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-1632x1632.bmp ./experimentos/tests_size/pokemon-1632x1632.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C_clang
  echo -n " " >> ./python/test_performance_size_C_clang
done


echo "" >> ./python/test_performance_size_C_clang

for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-2308x2308.bmp ./experimentos/tests_size/pokemon-2308x2308.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C_clang
  echo -n " " >> ./python/test_performance_size_C_clang
done


echo "" >> ./python/test_performance_size_C_clang

for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-3264x3264.bmp ./experimentos/tests_size/pokemon-3264x3264.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C_clang
  echo -n " " >> ./python/test_performance_size_C_clang
done


echo "" >> ./python/test_performance_size_C_clang

for i in {1..100} 
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-4620x4620.bmp ./experimentos/tests_size/pokemon-4620x4620.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_performance_size_C_clang
  echo -n " " >> ./python/test_performance_size_C_clang
done


echo " "
echo "**graficando"

python ./python/graficar.py 9 ./python/test_performance_size_C_clang "diferencia (clang)" "CPU Ticks"  256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb


