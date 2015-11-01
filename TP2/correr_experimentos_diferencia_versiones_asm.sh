#!/bin/bash


#echo "creando imagenes para los experimentos"
#/bin/bash ./experimentos/convertir.sh
#echo "done"

echo "" 

make clean

rm -rf ./python/tests_ver_asm/*

#git checkout ./python/tests_ver_asm/placeholder











make clean

make OPTFLAGS=-O3


echo "Corriendo test versiones asm diferencia"

echo "Corriendo ASM simd (128bits)"
echo ""
for i in {1..1000} 
do 
  ./build/tp2 -i asm diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests_ver_asm/test_difrencia_ASM_versions
  echo -n " " >> ./python/tests_ver_asm/test_difrencia_ASM_versions
done

echo "" 





reset 

make clean

#Cambio los nombres asi puedo ejecutar la diferencia que no usa simd
mv ./filtros/diff_asm.asm ./filtros/diff_asm_SIMD.asm
mv ./filtros/diff_asm_no_SIMD_1pixel.asm ./filtros/diff_asm.asm

make OPTLAGS=-O3

mv ./filtros/diff_asm.asm ./filtros/diff_asm_no_SIMD_1pixel.asm
mv ./filtros/diff_asm_SIMD.asm ./filtros/diff_asm.asm

echo "Corriendo ASM no simd v4"
echo ""

echo "" >> ./python/tests_ver_asm/test_difrencia_ASM_versions
for i in {1..1000} 
do 
  ./build/tp2 -i asm diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests_ver_asm/test_difrencia_ASM_versions
  echo -n " " >> ./python/tests_ver_asm/test_difrencia_ASM_versions
done

echo "" 

#Lo vuelvo a poner como estaba para los proximos tests






reset 

make clean

#Cambio los nombres asi puedo ejecutar la diferencia que no usa simd
mv ./filtros/diff_asm.asm ./filtros/diff_asm_SIMD.asm
mv ./filtros/diff_asm_no_SIMD_no_ror_inline.asm ./filtros/diff_asm.asm

make OPTLAGS=-O3

mv ./filtros/diff_asm.asm ./filtros/diff_asm_no_SIMD_no_ror_inline.asm
mv ./filtros/diff_asm_SIMD.asm ./filtros/diff_asm.asm

echo "Corriendo ASM no simd v4"
echo ""

echo "" >> ./python/tests_ver_asm/test_difrencia_ASM_versions
for i in {1..1000} 
do 
  ./build/tp2 -i asm diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests_ver_asm/test_difrencia_ASM_versions
  echo -n " " >> ./python/tests_ver_asm/test_difrencia_ASM_versions
done

echo "" 

#Lo vuelvo a poner como estaba para los proximos tests




reset 

make clean

#Cambio los nombres asi puedo ejecutar la diferencia que no usa simd
mv ./filtros/diff_asm.asm ./filtros/diff_asm_SIMD.asm
mv ./filtros/diff_asm_no_SIMD_no_ror.asm ./filtros/diff_asm.asm

make OPTLAGS=-O3

mv ./filtros/diff_asm.asm ./filtros/diff_asm_no_SIMD_no_ror.asm
mv ./filtros/diff_asm_SIMD.asm ./filtros/diff_asm.asm

echo "Corriendo ASM no simd v3"
echo ""

echo "" >> ./python/tests_ver_asm/test_difrencia_ASM_versions
for i in {1..1000} 
do 
  ./build/tp2 -i asm diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests_ver_asm/test_difrencia_ASM_versions
  echo -n " " >> ./python/tests_ver_asm/test_difrencia_ASM_versions
done

echo "" 

#Lo vuelvo a poner como estaba para los proximos tests


reset


make clean

#Cambio los nombres asi puedo ejecutar la diferencia que no usa simd
mv ./filtros/diff_asm.asm ./filtros/diff_asm_SIMD.asm
mv ./filtros/diff_asm_no_SIMD_unr.asm ./filtros/diff_asm.asm

make OPTLAGS=-O3

mv ./filtros/diff_asm.asm ./filtros/diff_asm_no_SIMD_unr.asm
mv ./filtros/diff_asm_SIMD.asm ./filtros/diff_asm.asm

echo "Corriendo ASM no simd ror unrolleado asm v2"
echo ""

echo "" >> ./python/tests_ver_asm/test_difrencia_ASM_versions
for i in {1..1000} 
do 
  ./build/tp2 -i asm diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests_ver_asm/test_difrencia_ASM_versions
  echo -n " " >> ./python/tests_ver_asm/test_difrencia_ASM_versions
done

echo "" 


make clean

#Cambio los nombres asi puedo ejecutar la diferencia que no usa simd
mv ./filtros/diff_asm.asm ./filtros/diff_asm_SIMD.asm
mv ./filtros/diff_asm_no_SIMD.asm ./filtros/diff_asm.asm

make OPTLAGS=-O3

mv ./filtros/diff_asm.asm ./filtros/diff_asm_no_SIMD.asm
mv ./filtros/diff_asm_SIMD.asm ./filtros/diff_asm.asm

echo "Corriendo ASM no simd ror sin unroll asm v1"
echo ""

echo "" >> ./python/tests_ver_asm/test_difrencia_ASM_versions
for i in {1..1000} 
do 
  ./build/tp2 -i asm diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests_ver_asm/test_difrencia_ASM_versions
  echo -n " " >> ./python/tests_ver_asm/test_difrencia_ASM_versions
done

echo "" 




make clean

make OPTFLAGS=-O3



echo "Corriendo diferencia C gcc -O3"
echo ""
echo "" >> ./python/tests_ver_asm/test_difrencia_ASM_versions
for i in {1..1000} 
do 
  ./build/tp2 -i c diff ./experimentos/tests_size/game-2308x2308.bmp  ./experimentos/tests_size/pokemon-2308x2308.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/tests_ver_asm/test_difrencia_ASM_versions
  echo -n " " >> ./python/tests_ver_asm/test_difrencia_ASM_versions
done

echo "" 

python ./python/graficarAlt.py 7 ./python/tests_ver_asm/test_difrencia_ASM_versions "diferencia ASM" "CPU Ticks" "asm (SSE4)" "asm v5" "asm v4" "asm v3" "asm v2" "asm v1"  "gcc"


