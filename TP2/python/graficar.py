import sys
import matplotlib.pyplot as plt
import numpy as np



def levantar(filename, titulo, yaxis, nombre1, nombre2):  #nombre1,2 son los nombres de las leyenda de las barras
  with open(filename, 'r') as f:                          #titulo es el titulo del grafico e yaxis es el nombre del eje 'y'
    comp1 = []
    comp1 = [int(x) for x in f.readline().split()]
    comp2 = []
    comp2 = [int(x) for x in f.readline().split()]
  graficarMediana(filename, titulo, yaxis, nombre1, nombre2, comp1,comp2 )
  graficarDesviacion(filename, titulo, yaxis, nombre1, nombre2, comp1, comp2)

def graficarPromedio(filename, titulo, yaxis, nombre1, nombre2, arg1, arg2,):
  plt.switch_backend('Qt4Agg')
  fig = plt.figure(figsize=(10,6))
  #fig.set_size_inches(6,6)
  ax = fig.add_subplot(1,2,1)
  arg1mean = np.mean(arg1)
  arg2mean = np.mean(arg2)
  arr = []
  arr.append(arg1mean)
  arr.append(arg2mean)
  ax.bar([1,2], arr, align='center', color=['b','r'])
  plt.title(titulo)
  #plt.tick_params(axis='x', which='both', bottom='off', top='off', labelbottom='off')  <- esto es por si quieren sacar los labels de x
  labels = []
  labels.append(nombre1)
  labels.append(nombre2)
  plt.ylabel(yaxis+' (promedio)')
  plt.xticks([1,2], labels)

  plt.savefig(filename+' (promedio).png', bbox_inches = 'tight')
  plt.xticks()

def graficarDesviacion(filename, titulo, yaxis, nombre1, nombre2, arg1, arg2):
  plt.switch_backend('Qt4Agg')
  fig = plt.figure(figsize=(10,6))
  #fig.set_size_inches(6,6)
  ax = fig.add_subplot(1,2,1)
  arg1mean = np.std(arg1)
  arg2mean = np.std(arg2)
  arr = []
  arr.append(arg1mean)
  arr.append(arg2mean)
  ax.bar([1,2], arr, align='center', color=['b','r'])
  plt.title(titulo)
  #plt.tick_params(axis='x', which='both', bottom='off', top='off', labelbottom='off')  <- esto es por si quieren sacar los labels de x
  labels = []
  labels.append(nombre1)
  labels.append(nombre2)
  plt.ylabel(yaxis +' (desviacion)' )
  plt.xticks([1,2], labels)

  plt.savefig(filename +' desviacion.png', bbox_inches = 'tight')
  plt.xticks()

def graficarMediana(filename, titulo, yaxis, nombre1, nombre2, arg1, arg2):
  plt.switch_backend('Qt4Agg')
  fig = plt.figure(figsize=(10,6))
  #fig.set_size_inches(6,6)
  ax = fig.add_subplot(1,2,1)
  arg1mean = np.median(arg1)
  arg2mean = np.median(arg2)
  arr = []
  arr.append(arg1mean)
  arr.append(arg2mean)
  ax.bar([1,2], arr, align='center', color=['b','r'])
  plt.title(titulo)
  #plt.tick_params(axis='x', which='both', bottom='off', top='off', labelbottom='off')  <- esto es por si quieren sacar los labels de x
  labels = []
  labels.append(nombre1)
  labels.append(nombre2)
  plt.ylabel(yaxis +' (mediana)' )
  plt.xticks([1,2], labels)

  plt.savefig(filename +' mediana.png', bbox_inches = 'tight')
  plt.xticks()

if __name__ == "__main__":
  levantar(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5])
