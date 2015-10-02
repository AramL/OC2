#!/bin/bash


#echo "creando imagenes para los experimentos"
#/bin/bash ./experimentos/convertir.sh
#echo "done"

echo "" 

make clean

echo ""
echo "**Corriendo mediciones diferencia ASM vs C"

make

echo "Corriendo ASM"
echo ""
for i in {1..1000} 
do 
  ./build/tp2 -i asm diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done

echo "" 

clear

make clean



echo " "
echo "**Compilando gcc -O3"

make OPTFLAGS=-O3

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi



echo "" >> ./python/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done


echo "" 

make clean

echo " "
echo "**Compilando Clang -O3"

make CC=clang OPTFLAGS=-O3 

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done



clear

echo "" 

make clean


echo " "
echo "**Compilando gcc -O2"

make OPTFLAGS=-O2

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done


echo "" 

make clean


echo " "
echo "**Compilando Clang -O2"

make CC=clang OPTFLAGS=-O2

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done

clear

echo "" 

make clean


echo " "
echo "**Compilando gcc -O1"

make OPTFLAGS=O1


if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done
 

clear

echo "" 

make clean 

echo " "
echo "**Compilando Clang -O1"

make CC=clang OPTFLAGS=-O1


if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done


echo "" 

make clean

echo " "
echo "**Compilando gcc -O0"

make OPTFLAGS=-O0


if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done



echo "" 

make clean



echo " "
echo "**Compilando Clang -O0"


make CC=clang OPTFLAGS=-O0


if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done





echo " "
echo "**graficando"

python ./python/graficarAlt.py 9 ./python/test_difrencia_ASM_C "diferencia (ASM vs C)" "CPU Ticks"  Assembly "gcc (-O3)" "clang (-O3)" "gcc (-O2)" "clang (-O2)"  "gcc (-O1)" "clang (-O1)"  "gcc (-O0)" "clang (-O0)" 

echo " "
echo "vago uriel :D"



clear




make clean

make OPTFLAGS=-O2


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

python ./python/graficar.py 9 ./python/test_performance_size_C "diferencia gcc (-O2)" "CPU Ticks"  256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb




clear





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

python ./python/graficar.py 9 ./python/test_performance_size_ASM "diferencia ASM" "CPU Ticks"  256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb



clear

make clean

make CC=clang OPTFLAGS=-O2


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

python ./python/graficar.py 9 ./python/test_performance_size_C_clang "diferencia clang (-O2)" "CPU Ticks"  256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb


