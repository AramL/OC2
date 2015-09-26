#Como usar

Se necesita python 2.7.x y matplotlib ('lo lei che')

EL formato del archivo deben ser números separados por espacios (siempre que se mida la misma funcion) y un newline por cada funcion nueva

Ejemplo:
test.txt = 
	11 15 423
	
	19 38 291

Luego llamar a 

python graficar.py cantidad_de_elementos nombre_de_archivo nombre_grafico y_axis (nombres de las barras en argumentos separados)

Por ejemplo:

    python graficar.py 3 la_barra barras.txt grafico_de_barras cantidad  barra1 barra2 barra3

A partir de y_axis pueden poner una cantidad de nombres variables, siempre que sean en cantidad equivalente a la cantidad_de_elementos



![](http://i.imgur.com/wVLPxID.png)
