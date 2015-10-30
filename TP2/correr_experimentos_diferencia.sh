#!/bin/bash


#echo "creando imagenes para los experimentos"
#/bin/bash ./experimentos/convertir.sh
#echo "done"

echo "" 

make clean

rm -rf ./python/tests/*

git checkout ./python/tests/placeholder

echo ""
echo "**Corriendo mediciones diferencia ASM vs C"


# make clean 
# mv ./filtros/diff_asm.asm ./filtros/diff_asm_SIMD.asm
# mv ./filtros/diff_asm_avx_256.asm ./filtros/diff_asm.asm

# make

# mv ./filtros/diff_asm.asm ./filtros/diff_asm_avx_256.asm
# mv ./filtros/diff_asm_SIMD.asm ./filtros/diff_asm.asm


# echo "Corriendo ASM simd (256bits)"
# echo ""
# for i in {1..1000} 
# do 
#   ./build/tp2 -i asm diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2320x2320.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
#   echo -n " " >> ./python/tests/test_difrencia_ASM_C
# done

# echo "" 

make clean

make OPTFLAGS=-O3



echo "Corriendo ASM simd (128bits)"
echo ""
for i in {1..1000} 
do 
  ./build/tp2 -i asm diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
  echo -n " " >> ./python/tests/test_difrencia_ASM_C
done

echo "" 




reset 

make clean

#Cambio los nombres asi puedo ejecutar la diferencia que no usa simd
mv ./filtros/diff_asm.asm ./filtros/diff_asm_SIMD.asm
mv ./filtros/diff_asm_no_SIMD.asm ./filtros/diff_asm.asm

make OPTLAGS=-O3

mv ./filtros/diff_asm.asm ./filtros/diff_asm_no_SIMD.asm
mv ./filtros/diff_asm_SIMD.asm ./filtros/diff_asm.asm

echo "Corriendo ASM no simd"
echo ""

echo "" >> ./python/tests/test_difrencia_ASM_C
for i in {1..1000} 
do 
  ./build/tp2 -i asm diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
  echo -n " " >> ./python/tests/test_difrencia_ASM_C
done

echo "" 

#Lo vuelvo a poner como estaba para los proximos tests


reset

echo " "
echo "**Compilando gcc -Os"


make OPTFLAGS=-Os


if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/tests/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
  echo -n " " >> ./python/tests/test_difrencia_ASM_C
done


make clean



echo " "
echo "**Compilando Clang -Os"


make CC=clang OPTFLAGS=-Os


if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/tests/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
  echo -n " " >> ./python/tests/test_difrencia_ASM_C
done






reset

make clean



echo " "
echo "**Compilando gcc -O3"

make OPTFLAGS=-O3

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi



echo "" >> ./python/tests/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
  echo -n " " >> ./python/tests/test_difrencia_ASM_C
done


echo "" 


reset 

make clean

echo " "
echo "**Compilando Clang -O3"

make CC=clang OPTFLAGS=-O3 

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/tests/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
  echo -n " " >> ./python/tests/test_difrencia_ASM_C
done



reset

echo "" 

make clean


echo " "
echo "**Compilando gcc -O2"

make OPTFLAGS=-O2

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/tests/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
  echo -n " " >> ./python/tests/test_difrencia_ASM_C
done


echo "" 


reset

make clean


echo " "
echo "**Compilando Clang -O2"

make CC=clang OPTFLAGS=-O2

if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/tests/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
  echo -n " " >> ./python/tests/test_difrencia_ASM_C
done

reset

echo "" 

reset

make clean


echo " "
echo "**Compilando gcc -O1"

make OPTFLAGS=-O1


if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/tests/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
  echo -n " " >> ./python/tests/test_difrencia_ASM_C
done
 

reset

echo "" 

make clean 

echo " "
echo "**Compilando Clang -O1"

make CC=clang OPTFLAGS=-O1


if [ $? -ne 0 ]; then
  echo "  **Error de compilacion"
  exit 1
fi


echo "" >> ./python/tests/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
  echo -n " " >> ./python/tests/test_difrencia_ASM_C
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


echo "" >> ./python/tests/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
  echo -n " " >> ./python/tests/test_difrencia_ASM_C
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


echo "" >> ./python/tests/test_difrencia_ASM_C

for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_difrencia_ASM_C
  echo -n " " >> ./python/tests/test_difrencia_ASM_C
done







echo " "
echo "**graficando"


python ./python/graficarAlt.py 12 ./python/tests/test_difrencia_ASM_C "diferencia (ASM vs C)" "CPU Ticks"   "asm (SSE4)" "asm" "gcc (-Os)" "clang (-Os)" "gcc (-O3)" "clang (-O3)" "gcc (-O2)" "clang (-O2)" "gcc (-O1)" "clang (-O1)" "gcc (-O0)" "clang (-O0)" 
#python ./python/graficarAlt.py 12 ./python/tests/test_difrencia_ASM_C "diferencia (ASM vs C)" "CPU Ticks"  "asm (AVX)" "asm (SIMD)" "asm" "gcc (-Os)" "clang (-Os)" "gcc (-O3)" "clang (-O3)" "gcc (-O2)" "clang (-O2)" "gcc (-O1)" "clang (-O1)" "gcc (-O0)" "clang (-O0)" 

echo " "
echo "vago uriel :D"



reset




make clean

make OPTFLAGS=-O2


echo " "
echo "**Corriendo mediciones performance sobre tamaño en difrencia"
echo "**Diferencia en C"

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-292x292.bmp ./experimentos/tests_size/pokemon-292x292.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_GCC_O2
  echo -n " " >> ./python/tests/test_performance_size_C_GCC_O2
done


echo "" >> ./python/tests/test_performance_size_C_GCC_O2


for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-416x416.bmp ./experimentos/tests_size/pokemon-416x416.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_GCC_O2
  echo -n " " >> ./python/tests/test_performance_size_C_GCC_O2
done


echo "" >> ./python/tests/test_performance_size_C_GCC_O2

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-584x584.bmp ./experimentos/tests_size/pokemon-584x584.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_GCC_O2
  echo -n " " >> ./python/tests/test_performance_size_C_GCC_O2
done


echo "" >> ./python/tests/test_performance_size_C_GCC_O2


for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-824x824.bmp ./experimentos/tests_size/pokemon-824x824.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_GCC_O2
  echo -n " " >> ./python/tests/test_performance_size_C_GCC_O2
done


echo "" >> ./python/tests/test_performance_size_C_GCC_O2

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-1160x1160.bmp ./experimentos/tests_size/pokemon-1160x1160.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_GCC_O2
  echo -n " " >> ./python/tests/test_performance_size_C_GCC_O2
done


echo "" >> ./python/tests/test_performance_size_C_GCC_O2


for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-1632x1632.bmp ./experimentos/tests_size/pokemon-1632x1632.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_GCC_O2
  echo -n " " >> ./python/tests/test_performance_size_C_GCC_O2
done


echo "" >> ./python/tests/test_performance_size_C_GCC_O2

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-2308x2308.bmp ./experimentos/tests_size/pokemon-2308x2308.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_GCC_O2
  echo -n " " >> ./python/tests/test_performance_size_C_GCC_O2
done


echo "" >> ./python/tests/test_performance_size_C_GCC_O2

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-3264x3264.bmp ./experimentos/tests_size/pokemon-3264x3264.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_GCC_O2
  echo -n " " >> ./python/tests/test_performance_size_C_GCC_O2
done


echo "" >> ./python/tests/test_performance_size_C_GCC_O2

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-4620x4620.bmp ./experimentos/tests_size/pokemon-4620x4620.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_GCC_O2
  echo -n " " >> ./python/tests/test_performance_size_C_GCC_O2
done


echo " "
echo "**graficando"

python ./python/graficarAlt.py 9 ./python/tests/test_performance_size_C_GCC_O2 "diferencia gcc (-O2)" "CPU Ticks"  256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb




reset



make clean

make OPTFLAGS=-Os


echo " "
echo "**Corriendo mediciones performance sobre tamaño en difrencia"
echo "**Diferencia en C"

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-292x292.bmp ./experimentos/tests_size/pokemon-292x292.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_oS
  echo -n " " >> ./python/tests/test_performance_size_C_oS
done


echo "" >> ./python/tests/test_performance_size_C_oS


for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-416x416.bmp ./experimentos/tests_size/pokemon-416x416.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_oS
  echo -n " " >> ./python/tests/test_performance_size_C_oS
done


echo "" >> ./python/tests/test_performance_size_C_oS

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-584x584.bmp ./experimentos/tests_size/pokemon-584x584.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_oS
  echo -n " " >> ./python/tests/test_performance_size_C_oS
done


echo "" >> ./python/tests/test_performance_size_C_oS


for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-824x824.bmp ./experimentos/tests_size/pokemon-824x824.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_oS
  echo -n " " >> ./python/tests/test_performance_size_C_oS
done


echo "" >> ./python/tests/test_performance_size_C_oS

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-1160x1160.bmp ./experimentos/tests_size/pokemon-1160x1160.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_oS
  echo -n " " >> ./python/tests/test_performance_size_C_oS
done


echo "" >> ./python/tests/test_performance_size_C_oS


for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-1632x1632.bmp ./experimentos/tests_size/pokemon-1632x1632.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_oS
  echo -n " " >> ./python/tests/test_performance_size_C_oS
done


echo "" >> ./python/tests/test_performance_size_C_oS

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-2308x2308.bmp ./experimentos/tests_size/pokemon-2308x2308.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_oS
  echo -n " " >> ./python/tests/test_performance_size_C_oS
done


echo "" >> ./python/tests/test_performance_size_C_oS

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-3264x3264.bmp ./experimentos/tests_size/pokemon-3264x3264.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_oS
  echo -n " " >> ./python/tests/test_performance_size_C_oS
done


echo "" >> ./python/tests/test_performance_size_C_oS

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-4620x4620.bmp ./experimentos/tests_size/pokemon-4620x4620.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_oS
  echo -n " " >> ./python/tests/test_performance_size_C_oS
done


echo " "
echo "**graficando"

python ./python/graficarAlt.py 9 ./python/tests/test_performance_size_C_oS "diferencia gcc (-Os)" "CPU Ticks"  256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb




reset


make clean
make OPTFLAGS=-O3

echo " "
echo "**Corriendo mediciones performance sobre tamaño en difrencia"
echo "**Diferencia en ASM"

for i in {1..1000}
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-292x292.bmp ./experimentos/tests_size/pokemon-292x292.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_ASM
  echo -n " " >> ./python/tests/test_performance_size_ASM
done


echo "" >> ./python/tests/test_performance_size_ASM


for i in {1..1000}
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-416x416.bmp ./experimentos/tests_size/pokemon-416x416.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_ASM
  echo -n " " >> ./python/tests/test_performance_size_ASM
done


echo "" >> ./python/tests/test_performance_size_ASM

for i in {1..1000}
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-584x584.bmp ./experimentos/tests_size/pokemon-584x584.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_ASM
  echo -n " " >> ./python/tests/test_performance_size_ASM
done


echo "" >> ./python/tests/test_performance_size_ASM


for i in {1..1000}
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-824x824.bmp ./experimentos/tests_size/pokemon-824x824.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_ASM
  echo -n " " >> ./python/tests/test_performance_size_ASM
done


echo "" >> ./python/tests/test_performance_size_ASM

for i in {1..1000}
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-1160x1160.bmp ./experimentos/tests_size/pokemon-1160x1160.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_ASM
  echo -n " " >> ./python/tests/test_performance_size_ASM
done


echo "" >> ./python/tests/test_performance_size_ASM


for i in {1..1000}
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-1632x1632.bmp ./experimentos/tests_size/pokemon-1632x1632.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_ASM
  echo -n " " >> ./python/tests/test_performance_size_ASM
done


echo "" >> ./python/tests/test_performance_size_ASM

for i in {1..1000}
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-2308x2308.bmp ./experimentos/tests_size/pokemon-2308x2308.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_ASM
  echo -n " " >> ./python/tests/test_performance_size_ASM
done


echo "" >> ./python/tests/test_performance_size_ASM

for i in {1..1000}
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-3264x3264.bmp ./experimentos/tests_size/pokemon-3264x3264.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_ASM
  echo -n " " >> ./python/tests/test_performance_size_ASM
done


echo "" >> ./python/tests/test_performance_size_ASM

for i in {1..1000}
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-4620x4620.bmp ./experimentos/tests_size/pokemon-4620x4620.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_ASM
  echo -n " " >> ./python/tests/test_performance_size_ASM
done


echo " "
echo "**graficando"

python ./python/graficarAlt.py 9 ./python/tests/test_performance_size_ASM "diferencia ASM" "CPU Ticks"  256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb



reset

make clean

make CC=clang OPTFLAGS=-O3


echo " "
echo "**Corriendo mediciones performance sobre tamaño en difrencia"
echo "**Diferencia en C"

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-292x292.bmp ./experimentos/tests_size/pokemon-292x292.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang
  echo -n " " >> ./python/tests/test_performance_size_C_clang
done


echo "" >> ./python/tests/test_performance_size_C_clang


for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-416x416.bmp ./experimentos/tests_size/pokemon-416x416.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang
  echo -n " " >> ./python/tests/test_performance_size_C_clang
done


echo "" >> ./python/tests/test_performance_size_C_clang

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-584x584.bmp ./experimentos/tests_size/pokemon-584x584.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang
  echo -n " " >> ./python/tests/test_performance_size_C_clang
done


echo "" >> ./python/tests/test_performance_size_C_clang


for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-824x824.bmp ./experimentos/tests_size/pokemon-824x824.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang
  echo -n " " >> ./python/tests/test_performance_size_C_clang
done


echo "" >> ./python/tests/test_performance_size_C_clang

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-1160x1160.bmp ./experimentos/tests_size/pokemon-1160x1160.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang
  echo -n " " >> ./python/tests/test_performance_size_C_clang
done


echo "" >> ./python/tests/test_performance_size_C_clang


for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-1632x1632.bmp ./experimentos/tests_size/pokemon-1632x1632.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang
  echo -n " " >> ./python/tests/test_performance_size_C_clang
done


echo "" >> ./python/tests/test_performance_size_C_clang

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-2308x2308.bmp ./experimentos/tests_size/pokemon-2308x2308.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang
  echo -n " " >> ./python/tests/test_performance_size_C_clang
done


echo "" >> ./python/tests/test_performance_size_C_clang

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-3264x3264.bmp ./experimentos/tests_size/pokemon-3264x3264.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang
  echo -n " " >> ./python/tests/test_performance_size_C_clang
done


echo "" >> ./python/tests/test_performance_size_C_clang

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-4620x4620.bmp ./experimentos/tests_size/pokemon-4620x4620.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang
  echo -n " " >> ./python/tests/test_performance_size_C_clang
done


echo " "
echo "**graficando"

python ./python/graficarAlt.py 9 ./python/tests/test_performance_size_C_clang "diferencia clang (-O3)" "CPU Ticks"  256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb


reset



make clean

make CC=clang OPTFLAGS=-Os


echo " "
echo "**Corriendo mediciones performance sobre tamaño en difrencia"
echo "**Diferencia en C"

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-292x292.bmp ./experimentos/tests_size/pokemon-292x292.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang_oS
  echo -n " " >> ./python/tests/test_performance_size_C_clang_oS
done


echo "" >> ./python/tests/test_performance_size_C_clang_oS


for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-416x416.bmp ./experimentos/tests_size/pokemon-416x416.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang_oS
  echo -n " " >> ./python/tests/test_performance_size_C_clang_oS
done


echo "" >> ./python/tests/test_performance_size_C_clang_oS

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-584x584.bmp ./experimentos/tests_size/pokemon-584x584.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang_oS
  echo -n " " >> ./python/tests/test_performance_size_C_clang_oS
done


echo "" >> ./python/tests/test_performance_size_C_clang_oS


for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-824x824.bmp ./experimentos/tests_size/pokemon-824x824.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang_oS
  echo -n " " >> ./python/tests/test_performance_size_C_clang_oS
done


echo "" >> ./python/tests/test_performance_size_C_clang_oS

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-1160x1160.bmp ./experimentos/tests_size/pokemon-1160x1160.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang_oS
  echo -n " " >> ./python/tests/test_performance_size_C_clang_oS
done


echo "" >> ./python/tests/test_performance_size_C_clang_oS


for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-1632x1632.bmp ./experimentos/tests_size/pokemon-1632x1632.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang_oS
  echo -n " " >> ./python/tests/test_performance_size_C_clang_oS
done


echo "" >> ./python/tests/test_performance_size_C_clang_oS

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-2308x2308.bmp ./experimentos/tests_size/pokemon-2308x2308.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang_oS
  echo -n " " >> ./python/tests/test_performance_size_C_clang_oS
done


echo "" >> ./python/tests/test_performance_size_C_clang_oS

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-3264x3264.bmp ./experimentos/tests_size/pokemon-3264x3264.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang_oS
  echo -n " " >> ./python/tests/test_performance_size_C_clang_oS
done


echo "" >> ./python/tests/test_performance_size_C_clang_oS

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-4620x4620.bmp ./experimentos/tests_size/pokemon-4620x4620.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_performance_size_C_clang_oS
  echo -n " " >> ./python/tests/test_performance_size_C_clang_oS
done


echo " "
echo "**graficando"

python ./python/graficarAlt.py 9 ./python/tests/test_performance_size_C_clang_oS "diferencia clang (-Os)" "CPU Ticks" 256kb 512kb 1mb 2mb 4mb 8mb 16mb 32mb 64mb




reset







make clean

echo "diferencia loop unrolling"


make 



for i in {1..1000}
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-3264x3264.bmp ./experimentos/tests_size/pokemon-3264x3264.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_loop_unrolled
  echo -n " " >> ./python/tests/test_loop_unrolled
done

make clean

#Cambio los nombres asi puedo ejecutar la diferencia que no usa simd
mv ./filtros/diff_asm.asm ./filtros/diff_asm_SIMD.asm
mv ./filtros/diff_asm_no_SIMD.asm ./filtros/diff_asm.asm

make

mv ./filtros/diff_asm.asm ./filtros/diff_asm_no_SIMD.asm
mv ./filtros/diff_asm_SIMD.asm ./filtros/diff_asm.asm


echo "" >> ./python/tests/test_loop_unrolled

for i in {1..1000}
do 
  ./build/tp2 -i asm diff  ./experimentos/tests_size/game-3264x3264.bmp ./experimentos/tests_size/pokemon-3264x3264.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_loop_unrolled
  echo -n " " >> ./python/tests/test_loop_unrolled
done


make clean


mv ./filtros/diff_c.c ./filtros/diff_c_no_unroll.c
mv ./filtros/diff_c_unrolled.c ./filtros/diff_c.c

make OPTFLAGS=-O3

mv ./filtros/diff_c.c ./filtros/diff_c_unrolled.c
mv ./filtros/diff_c_no_unroll.c ./filtros/diff_c.c



echo "" >> ./python/tests/test_loop_unrolled

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-3264x3264.bmp ./experimentos/tests_size/pokemon-3264x3264.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_loop_unrolled
  echo -n " " >> ./python/tests/test_loop_unrolled
done


make clean

make OPTFLAGS=-O3

echo "" >> ./python/tests/test_loop_unrolled

for i in {1..1000}
do 
  ./build/tp2 -i c diff  ./experimentos/tests_size/game-3264x3264.bmp ./experimentos/tests_size/pokemon-3264x3264.bmp  | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_loop_unrolled
  echo -n " " >> ./python/tests/test_loop_unrolled
done


python ./python/graficarAlt.py 4 ./python/tests/test_loop_unrolled "diferencia unrolling" "CPU Ticks" "asm (SSE4)" "asm" "gcc (unrolled)" "gcc"





















# echo "test asm simple vs sse vs avx"



# make clean 
# mv ./filtros/diff_asm.asm ./filtros/diff_asm_SIMD.asm
# mv ./filtros/diff_asm_avx_256.asm ./filtros/diff_asm.asm

# make

# mv ./filtros/diff_asm.asm ./filtros/diff_asm_avx_256.asm
# mv ./filtros/diff_asm_SIMD.asm ./filtros/diff_asm.asm


# echo "Corriendo ASM simd (128bits)"
# echo ""
# echo "" >> ./python/tests/test_asm_versions
# for i in {1..1000}
# do 
#   ./build/tp2 -i asm diff ./experimentos/tests_size/game-4624x4624.bmp  ./experimentos/tests_size/pokemon-4624x4624.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_asm_versions
#   echo -n " " >> ./python/tests/test_asm_versions
# done

# echo "" 





# echo "Corriendo ASM simd (128bits)"
# echo ""
# echo "" >> ./python/tests/test_asm_versions
# for i in {1..1000}
# do 
#   ./build/tp2 -i asm diff ./experimentos/tests_size/game-4624x4624.bmp  ./experimentos/tests_size/pokemon-4624x4624.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_asm_versions
#   echo -n " " >> ./python/tests/test_asm_versions
# done

# echo "" 




# reset 

# make clean

# #Cambio los nombres asi puedo ejecutar la diferencia que no usa simd
# mv ./filtros/diff_asm.asm ./filtros/diff_asm_SIMD.asm
# mv ./filtros/diff_asm_no_SIMD.asm ./filtros/diff_asm.asm

# make

# mv ./filtros/diff_asm.asm ./filtros/diff_asm_no_SIMD.asm
# mv ./filtros/diff_asm_SIMD.asm ./filtros/diff_asm.asm

# echo "Corriendo ASM no simd"
# echo ""

# echo "" >> ./python/tests/test_asm_versions
# for i in {1..1000}
# do 
#   ./build/tp2 -i asm diff ./experimentos/tests_size/game-4624x4624.bmp  ./experimentos/tests_size/pokemon-4624x4624.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests/test_asm_versions
#   echo -n " " >> ./python/tests/test_asm_versions
# done

# echo "" 

# #Lo vuelvo a poner como estaba para los proximos tests

# python ./python/graficarAlt.py 13 ./python/tests/test_asm_versions "diferencia (ASM)" "CPU Ticks"   "asm (AVX)" "asm (SSE4)" "asm"