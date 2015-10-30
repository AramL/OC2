#!/bin/bash

rm -rf ./python/tests_blur/*
git checkout ./python/tests_blur/placeholder



reset

echo "corriendo los experimentos de blur"



make clean

make OPTFLAGS=-O3


echo " "
echo "**Corriendo mediciones blur ASM vs C"
echo "Blur 4 pixels"
for j in {1..100}
do
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo "" >> ./python/tests_blur/test_blur_ASM_C

echo ""
echo "med asm terminadas"

reset


make clean


mv ./filtros/blur_asm.asm ./filtros/blur_asm_4_pixels.asm
mv ./filtros/blur_asm_1_pixel.asm ./filtros/blur_asm.asm

make

mv ./filtros/blur_asm.asm ./filtros/blur_asm_1_pixel.asm
mv ./filtros/blur_asm_4_pixels.asm ./filtros/blur_asm.asm


echo " "
echo "**Corriendo mediciones blur ASM vs C"
echo "Blur 1 pixel
"
for j in {1..100}
do
  ./build/tp2 -i asm blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo "" >> ./python/tests_blur/test_blur_ASM_C

echo ""
echo "med asm terminadas"

reset

make clean

make OPTFLAGS=-Os

for r in {1..100}
do
  ./build/tp2 -i c blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo "" >> ./python/tests_blur/test_blur_ASM_C

reset

make clean

make CC=clang OPTFLAGS=-Os

for r in {1..100}
do
  ./build/tp2 -i c blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo "" >> ./python/tests_blur/test_blur_ASM_C

reset

make clean

make OPTFLAGS=-O3

for r in {1..100}
do
  ./build/tp2 -i c blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo "" >> ./python/tests_blur/test_blur_ASM_C

reset

make clean

make CC=clang OPTFLAGS=-O3

for r in {1..100}
do
  ./build/tp2 -i c blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo "" >> ./python/tests_blur/test_blur_ASM_C

reset

make clean

make OPTFLAGS=-O2

for r in {1..100}
do
  ./build/tp2 -i c blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo "" >> ./python/tests_blur/test_blur_ASM_C

reset

make clean

make CC=clang OPTFLAGS=-O2

for r in {1..100}
do
  ./build/tp2 -i c blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo "" >> ./python/tests_blur/test_blur_ASM_C

reset

make clean

make OPTFLAGS=-O1

for r in {1..100}
do
  ./build/tp2 -i c blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo "" >> ./python/tests_blur/test_blur_ASM_C

reset

make clean

make CC=clang OPTFLAGS=-O1

for r in {1..100}
do
  ./build/tp2 -i c blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo "" >> ./python/tests_blur/test_blur_ASM_C

reset

make clean

make OPTFLAGS=-O0

for r in {1..100}
do
  ./build/tp2 -i c blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo "" >> ./python/tests_blur/test_blur_ASM_C

reset

make clean

make CC=clang OPTFLAGS=-O0

for r in {1..100}
do
  ./build/tp2 -i c blur ./experimentos/tests_size/game-1160x1160.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_blur_ASM_C
  echo -n " " >> ./python/tests_blur/test_blur_ASM_C
done

echo " "
echo "**graficando"

python ./python/graficarAlt.py 12 ./python/tests_blur/test_blur_ASM_C "blur (ASM vs C)" "CPU Ticks"  "asm v2" "asm v1" "gcc (-Os)" "clang (-Os)" "gcc (-O3)" "clang (-O3)" "gcc (-O2)" "clang (-O2)" "gcc (-O1)" "clang (-O1)" "gcc (-O0)" "clang (-O0)"

echo "" 
echo "dame las imagenes"




reset 
echo ""
make clean

make  OPTFLAGS=-O3

echo ""
echo "test radios blur contra tamaño"

for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-584x584.bmp 5 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c

for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-584x584.bmp 5 10 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c


for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-584x584.bmp 5 25 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c


for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-584x584.bmp 5 50 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c


for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-584x584.bmp 5 75 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c


for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-584x584.bmp 5 100 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c

for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-584x584.bmp 5 150 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c

for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-584x584.bmp 5 200 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c

for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-584x584.bmp 5 250 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_c
  echo -n " " >> ./python/tests_blur/test_radio_size_c
done

echo "" >> ./python/tests_blur/test_radio_size_c



python ./python/tests_blur/graficar.py 9 ./python/tests_blur/test_radio_size_ASM "blur c (radios)" "CPU Ticks"  5 10 25 50 75 100 150 200 250



make clean 

make CC=clang OPTFLAGS=-O3

for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-292x292.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_c
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_c
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_c


reset

echo "416x416"

for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-416x416.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_c
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_c
done
reset

echo "584x584"

for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-584x584.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_c
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_c
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_c

reset

echo "824x824"


for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-824x824.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_c
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_c
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_c

reset

echo "1160x1160"



for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-1160x1160.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_c
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_c
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_c

reset

echo "1632x1632"



for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-1632x1632.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_c
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_c
done


echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_c

echo "2308x2308"



for i in {1..50} 
do 
  ./build/tp2 -i c blur ././experimentos/tests_size/tests_size/game-2308x2308.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_c
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_c
done





python ./python/tests_blur/graficar.py 7 ./python/tests_blur/test_radio_cambiando_tamanios_c "blur gcc (-O2)" "CPU Ticks" 256kb 512kb 1mb 2mb 4mb 8mb 16mb









make clean 

make OPTFLAGS=-O3

for i in {1..100} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-292x292.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_asm
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_asm
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_asm

reset

echo "416x416"

for i in {1..100} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-416x416.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_asm
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_asm
done

reset

echo "584x584"

for i in {1..100} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-584x584.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_asm
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_asm
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_asm

reset

echo "824x824"

for i in {1..100} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-824x824.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_asm
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_asm
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_asm

reset

echo "1160x1160"

for i in {1..100} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-1160x1160.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_asm
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_asm
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_asm


reset

echo "1632x1632"

for i in {1..100} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-1632x1632.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_asm
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_asm
done

echo "" >> ./python/tests_blur/test_radio_cambiando_tamanios_asm



reset

echo "2308x2308"

for i in {1..100} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-2308x2308.bmp 3 5 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_cambiando_tamanios_asm
  echo -n " " >> ./python/tests_blur/test_radio_cambiando_tamanios_asm
done


python ./python/tests_blur/graficar.py 7 ./python/tests_blur/test_radio_cambiando_tamanios_asm "blur gcc (-O2)" "CPU Ticks" 256kb 512kb 1mb 2mb 4mb 8mb 16mb




reset



reset

make clean

make OPTFLAGS=-O3

echo ""
echo "test radios blur contra tamaño"

for i in {1..50} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-824x824.bmp 5 15 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM

for i in {1..50} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-824x824.bmp 5 25 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM


for i in {1..50} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-824x824.bmp 5 50 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM


for i in {1..50} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-824x824.bmp 5 75 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM


for i in {1..50} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-824x824.bmp 5 100 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM


for i in {1..50} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-824x824.bmp 5 150 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM

for i in {1..50} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-824x824.bmp 5 200 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM

for i in {1..50} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-824x824.bmp 5 300 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM

for i in {1..50} 
do 
  ./build/tp2 -i asm blur ././experimentos/tests_size/tests_size/game-824x824.bmp 5 400 | cut -d':' -f2 | sed '9,9!d' | xargs echo -n | tee -a ./python/tests_blur/test_radio_size_ASM
  echo -n " " >> ./python/tests_blur/test_radio_size_ASM
done

echo "" >> ./python/tests_blur/test_radio_size_ASM




python ./python/tests_blur/graficar.py 9 ./python/tests_blur/test_radio_size_ASM "blur ASM (radios)" "CPU Ticks"  15 25 50 75 100 150 200 300 400