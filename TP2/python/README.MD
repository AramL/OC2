#Como usar

Se necesita python 2.7.x y matplotlib

La idea es llamar varias veces a grabar.py de la siguiente forma

    python grabar.py 0 nombreDeArchivoAgrabar Valor

El 0 significa que va a seguir pegando valores en la misma linea, cuando hay un 1, clava un newline, la idea es tener 2 lineas una con los resultados de C y la otra con los de ASM por ej.

Ejemplo más concreto.

Se llaman 100 tests de diferencia en C cada uno da una llamada a

    python grabar.py 0 nombreDeArchivoAgrabar Valor

Luego se llama **UNA SOLA VEZ** a

    python grabar.py 1 nombreDeArchivoAgrabar Valor

Aca "Valor" **NO IMPORTA PERO ES NECESARIO.** Y despues se llamaria 100 veces con los tests en ASM cada uno dando una llamada a

    python grabar.py 0 "Nombre del archivo" 

Esto dejaria un archivo con nombre "Nombre del archivo" de la forma:
cval1 cval2 cval3..
asmval1 asmval2 asmval3

Una vez que tenemos el archivo este podemos llamar a nuestra funcion graficar (hay que fijarse bien que vamos a medir, mediana, desviación estandar, etc. Para esto hacer el llamado (en este caso sigue el ejemplo de dif c vs asm):

    python graficar.py "Nombre del archivo" "Nombre del gráfico" "Nombre del eje Y" "Nombre de la primer barra" "Nombre de la segunda barra"

Esto deberia dejarles en donde hicieron el llamado una imagen llamada "Nombre del archivo.png"



Para probar que les anda
Peguen lo siguiente en un archivo de texto plano llamado 'test':
933 2 52
32 2135 4

Y luego llamen

    python graficar.py test "C vs ASM" "ticks mean"  Assembly C

Les deberia dejar un imagen llamada test.png con un gráfico de barras de titulo C vs ASM con una barra llamada C y la otra ASM con el eje y nombrado como 'ticks mean'

![](http://i.imgur.com/wVLPxID.png)
