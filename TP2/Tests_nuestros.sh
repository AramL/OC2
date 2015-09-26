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
  ./build/tp2 -i asm diff img/scene0.bmp img/scene400.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done

echo "" >> ./python/test_difrencia_ASM_C

for i in {1..100} 
do 
  ./build/tp2 -i c diff img/scene0.bmp img/scene400.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_difrencia_ASM_C
  echo -n " " >> ./python/test_difrencia_ASM_C
done

echo " "
echo "**graficando"

python ./python/graficar.py 2 ./python/test_difrencia_ASM_C "diferencia (C vs ASM)" "CPU Ticks"  Assembly gcc 

echo " "
echo "vago uriel :D"



# echo " "
# echo "**Corriendo mediciones blur ASM vs C"

# for j in {1 2 3 4 5 6 7 8 9 10}
# do
#   ./build/tp2 -i asm diff img/lena24.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_blur_ASM_C
#   echo -n " " >> ./python/test_blur_ASM_C
# done

# echo "" >> ./python/test_blur_ASM_C

# for r in {1 2 3 4 5 6 7 8 9 10}
# do
#   ./build/tp2 -i c diff img/lena24.bmp | cut -d':' -f2 | sed '10,10!d' | xargs echo -n | tee -a ./python/test_blur_ASM_C
#   echo -n " " >> ./python/test_blur_ASM_C
# done

# echo " "
# echo "**graficando"

# python ./python/graficar.py "compare_two" ./python/test_blur_ASM_C "blur (C vs ASM)" "CPU Ticks"  Assembly gcc asdd


