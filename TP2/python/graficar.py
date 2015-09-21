import sys
import matplotlib.pyplot as plt
import numpy as np



def levantar(filename, titulo, nombre1, nombre2):
  with open(filename, 'r') as f:
    comp1 = []
    comp1 = [int(x) for x in f.readline().split()]
    comp2 = []
    comp2 = [int(x) for x in f.readline().split()]
  graficar(filename, titulo, nombre1, nombre2, comp1,comp2 )


def graficar(filename, titulo, nombre1, nombre2, arg1, arg2,):
  plt.switch_backend('Qt4Agg')
  fig = plt.figure(figsize=(10,6))


  #plt.legend((), (nombre1,nombre2))
  ax = fig.add_subplot(1,2,1)
  arg1mean = np.mean(arg1)
  arg2mean = np.mean(arg2)
  arr = []
  arr.append(arg1mean)
  arr.append(arg2mean)
  ax.bar([1,2], arr, align='center', color=['b','r'])
  plt.title(titulo)
  #plt.tick_params(axis='x', which='both', bottom='off', top='off', labelbottom='off')
  labels = []
  labels.append(nombre1)
  labels.append(nombre2)
  plt.xticks([1,2], labels)

  plt.savefig(filename+'.png')
  plt.xticks()

if __name__ == "__main__":
  levantar(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])
