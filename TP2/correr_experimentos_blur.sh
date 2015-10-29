#!/bin/bash

rm -rf ./python/tests_blur/*
git checkout ./python/tests_blur/placeholder

echo "corriendo los experimentos de blur"


make clean

make OPTFLAGS=-O3


echo " "
echo "**Corriendo mediciones blur ASM vs C"

for j in {1..10}
do
  ./build/tp2 -i asm blur experimentos/game-1160x1160 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo "" >> ./python/tests_blur/test_blur_ASM_C

echo ""
echo "med asm terminadas"

reset

make clean

make OPTFLAGS=-Os

for r in {1..10}
do
  ./build/tp2 -i c blur experimentos/game-1160x1160 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
  echo ""
  echo $r
done

reset

make clean

make CC=clang OPTFLAGS=-Os

for r in {1..10}
do
  ./build/tp2 -i c blur experimentos/game-1160x1160 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
  echo ""
  echo $r
done


reset

make clean

make OPTFLAGS=-O3

for r in {1..10}
do
  ./build/tp2 -i c blur experimentos/game-1160x1160 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
  echo ""
  echo $r
done

reset

make clean

make CC=clang OPTFLAGS=-O3

for r in {1..10}
do
  ./build/tp2 -i c blur experimentos/game-1160x1160 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
  echo ""
  echo $r
done


reset

make clean

make OPTFLAGS=-O2

for r in {1..10}
do
  ./build/tp2 -i c blur experimentos/game-1160x1160 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
  echo ""
  echo $r
done

reset

make clean

make CC=clang OPTFLAGS=-O2

for r in {1..10}
do
  ./build/tp2 -i c blur experimentos/game-1160x1160 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
  echo ""
  echo $r
done

reset

make clean

make OPTFLAGS=-O1

for r in {1..10}
do
  ./build/tp2 -i c blur experimentos/game-1160x1160 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
  echo ""
  echo $r
done

reset

make clean

make CC=clang OPTFLAGS=-O1

for r in {1..10}
do
  ./build/tp2 -i c blur experimentos/game-1160x1160 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
  echo ""
  echo $r
done

reset

make clean

make OPTFLAGS=-O0

for r in {1..10}
do
  ./build/tp2 -i c blur experimentos/game-1160x1160 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
  echo ""
  echo $r
done

reset

make clean

make CC=clang OPTFLAGS=-O0

for r in {1..10}
do
  ./build/tp2 -i c blur experimentos/game-1160x1160 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
  echo ""
  echo $r
done

echo " "
echo "**graficando"

python ./python/tests_blur/graficar.py 11 ./python/tests_blur/test_blur_ASM_C "blur (ASM vs C)" "CPU Ticks"  "asm (SSE4)" "gcc (-Os)" "clang (-Os)" "gcc (-O3)" "clang (-O3)""gcc (-O2)" "clang (-O2)""gcc (-O1)" "clang (-O1)" "gcc (-O0)" "clang (-O0)"

echo "" 
echo "dame las imagenes"





reset

make clean

make OPTFLAGS=-O3

echo ""
echo "test radios blur contra tamaño"

for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-584x584.bmp 5 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM

for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-584x584.bmp 5 10 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM


for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-584x584.bmp 5 25 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM


for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-584x584.bmp 5 50 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM


for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-584x584.bmp 5 75 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM


for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-584x584.bmp 5 100 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM

for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-584x584.bmp 5 150 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM

for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-584x584.bmp 5 200 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM

for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-584x584.bmp 5 250 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM




python ./python/tests_blur/graficar.py 9 ./python/tests_blur/test_radio_size_ASM "blur ASM (radios)" "CPU Ticks"  5 10 25 50 75 100 150 200 250


reset 
echo ""
make clean

make  

echo ""
echo "test radios blur contra tamaño"

for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-584x584.bmp 5 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c

for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-584x584.bmp 5 10 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c


for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-584x584.bmp 5 25 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c


for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-584x584.bmp 5 50 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c


for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-584x584.bmp 5 75 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c


for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-584x584.bmp 5 100 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c

for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-584x584.bmp 5 150 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c

for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-584x584.bmp 5 200 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c

for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-584x584.bmp 5 250 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c



python ./python/tests_blur/graficar.py 9 ./python/tests_blur/test_radio_size_ASM "blur ASM (radios)" "CPU Ticks"  5 10 25 50 75 100 150 200 250



make clean 

make CC=clang OPTFLAGS=-O3

for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-292x292.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_c
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_c
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_c


for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-416x416.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_c
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_c
done


for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-584x584.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_c
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_c
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_c


echo "824x824"


for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-824x824.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_c
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_c
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_c

echo "1160x1160"



for i in {1..20} 
do 
  ./build/tp2 -i c blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_c
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_c
done




python ./python/tests_blur/graficar.py 5 ./python/tests_blur/test_radio_cambiando_tamanios_c "blur gcc (-O2)" "CPU Ticks" 256kb 512kb 1mb 2mb 4mb 









make clean 

make OPTFLAGS=-O3

for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-292x292.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_asm
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_asm
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_asm


for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-416x416.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_asm
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_asm
done


for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-584x584.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_asm
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_asm
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_asm

echo "824x824"

for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-824x824.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_asm
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_asm
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_asm

echo "1160x1160"

for i in {1..20} 
do 
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_asm
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_asm
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_asm




python ./python/tests_blur/graficar.py 5 ./python/tests_blur/test_radio_cambiando_tamanios_asm "blur gcc (-O2)" "CPU Ticks" 256kb 512kb 1mb 2mb 4mb 
