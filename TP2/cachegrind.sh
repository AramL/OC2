 #!/usr/bin/fish
 
# echo "diff asm"
#  valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i asm diff ./experimentos/tests_size/game-136x136.bmp ./experimentos/tests_size/pokemon-136x136.bmp 1 3 -t 100 
#  valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i asm diff ./experimentos/tests_size/game-292x292.bmp  ./experimentos/tests_size/pokemon-292x292.bmp 1 3 -t 100
#  valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i asm diff ./experimentos/tests_size/game-416x416.bmp ./experimentos/tests_size/pokemon-416x416.bmp 1 3 -t 100
#  valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i asm diff ./experimentos/tests_size/game-584x584.bmp  ./experimentos/tests_size/pokemon-584x584.bmp 1 3 -t 100  
#  valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i asm diff ./experimentos/tests_size/game-824x824.bmp  ./experimentos/tests_size/pokemon-824x824.bmp 1 3 -t 100  
#  valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i asm diff ./experimentos/tests_size/game-1632x1632.bmp  ./experimentos/tests_size/pokemon-1632x1632.bmp 1 3 -t 100
# echo "diff c"
#  valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i c diff ./experimentos/tests_size/game-136x136.bmp ./experimentos/tests_size/pokemon-136x136.bmp 1 3 -t 100 
#  valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i c diff ./experimentos/tests_size/game-292x292.bmp  ./experimentos/tests_size/pokemon-292x292.bmp 1 3 -t 100
#  valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i c diff ./experimentos/tests_size/game-416x416.bmp ./experimentos/tests_size/pokemon-416x416.bmp 1 3 -t 100
#  valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i c diff ./experimentos/tests_size/game-584x584.bmp  ./experimentos/tests_size/pokemon-584x584.bmp 1 3 -t 100  
#  valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i c diff ./experimentos/tests_size/game-824x824.bmp  ./experimentos/tests_size/pokemon-824x824.bmp 1 3 -t 100  
#  valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i c diff ./experimentos/tests_size/game-1632x1632.bmp  ./experimentos/tests_size/pokemon-1632x1632.bmp 1 3 -t 100  

echo "blur asm "

 valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i asm blur ./experimentos/tests_size/game-136x136.bmp 1 3 -t 30 
 valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i asm blur ./experimentos/tests_size/game-292x292.bmp 1 3 -t 30
 valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i asm blur ./experimentos/tests_size/game-416x416.bmp 1 3 -t 30
 valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i asm blur ./experimentos/tests_size/game-584x584.bmp 1 3 -t 30
 valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i asm blur ./experimentos/tests_size/game-824x824.bmp 1 3 -t 30
 valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i asm blur ./experimentos/tests_size/game-1632x1632.bmp 1 3 -t 30  

 echo "blur c"

 valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i c blur ./experimentos/tests_size/game-136x136.bmp 1 3 -t 30 
 valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i c blur ./experimentos/tests_size/game-292x292.bmp 1 3 -t 30
 valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i c blur ./experimentos/tests_size/game-416x416.bmp 1 3 -t 30
 valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i c blur ./experimentos/tests_size/game-584x584.bmp 1 3 -t 30
 valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i c blur ./experimentos/tests_size/game-824x824.bmp 1 3 -t 30
 valgrind --tool=cachegrind --branch-sim=yes ./build/tp2 -i c blur ./experimentos/tests_size/game-1632x1632.bmp 1 3 -t 30  