import sys
import matplotlib.pyplot as plt
import numpy as np


def liftData(ctype, filename, titulo, yaxis, *args):
    with open(filename, 'r') as f:
        comp = [[int(x) for x in line.split()] for line in f]
    drawMedian(ctype, filename, titulo, yaxis, comp, *args)
    drawMean(ctype, filename, titulo, yaxis, comp, *args)
    drawStdDev(ctype, filename, titulo, yaxis, comp, *args)
    drawPlotMean(ctype, filename, titulo, yaxis, comp, *args)
    drawPlotMeanLog(ctype, filename, titulo, yaxis, comp, *args)

def drawMedian(ctype, filename, titulo, yaxis, comp, *args):
    plt.switch_backend('Qt4Agg')
    fig = plt.figure(figsize=(30,6))
    ax = fig.add_subplot(1,2,1)
    medians = []
    for v in comp:
        medians.append(np.median(v))
    if len(comp) == 12:
        col = ['r', 'r' ,'b','b','g', 'g','m', 'm', 'c', 'c', 'y' ,'y']
    if len(comp) == 13
        col = ['r', 'r', 'r','b','b','g', 'g','m', 'm', 'c', 'c', 'y' ,'y']
    else:
        col = ['r' ,'b','b','g', 'g','m', 'm', 'c', 'c', 'y' ,'y']
    ax.grid( b=True, linestyle='-',  axis = 'y', linewidth=1, zorder=1) 
    ax.bar( range(1, int(ctype) + 1),  medians, align='center', color=col[0: int(ctype) + 1], zorder=10)
    plt.title(titulo)
    labels = [i for i in args]
    plt.ylabel(yaxis +' (mediana)' )
    if len(comp) >= 10:
        plt.tick_params(labelsize = 9)
    plt.xticks(range(1, (int(ctype)) + 1), labels)
    plt.savefig(filename+' (mediana).png', bbox_inches = 'tight')
    plt.xticks()

def drawStdDev(ctype, filename, titulo, yaxis, comp, *args):
    plt.switch_backend('Qt4Agg')
    fig = plt.figure(figsize=(30,6))
    ax = fig.add_subplot(1,2,1)
    stddev = []
    for v in comp:
        stddev.append(np.std(v))
    if len(comp) == 12:
        col = ['r', 'r' ,'b','b','g', 'g','m', 'm', 'c', 'c', 'y' ,'y']
    else:
        col = ['r' ,'b','b','g', 'g','m', 'm', 'c', 'c', 'y' ,'y']
    ax.grid( b=True, linestyle='-',  axis = 'y', linewidth=1, zorder=1) 
    ax.bar( range(1, (int(ctype))+1),  stddev, align='center', color=col[0: int(ctype) + 1], zorder=10)
    plt.title(titulo)
    labels = [i for i in args]
    plt.ylabel(yaxis +' (desviacion)' )
    plt.tick_params(labelsize = 9)
    plt.xticks(range(1, (int(ctype)) + 1), labels)
    plt.savefig(filename+' (desviacion).png', bbox_inches = 'tight')
    plt.xticks()

def drawMean(ctype, filename, titulo, yaxis, comp, *args):
    plt.switch_backend('Qt4Agg')
    fig = plt.figure(figsize=(30,6))
    ax = fig.add_subplot(1,2,1)
    means = []
    for v in comp:
        means.append(np.mean(v))
    if len(comp) == 12:
        col = ['r', 'r' ,'b','b','g', 'g','m', 'm', 'c', 'c', 'y' ,'y']
    else:
        col = ['r' ,'b','b','g', 'g','m', 'm', 'c', 'c', 'y' ,'y']
    ax.grid( b=True, linestyle='-',  axis = 'y', linewidth=1, zorder=1) 
    ax.bar( range(1, (int(ctype))+1),  means, align='center', color=col[0: int(ctype) + 1], zorder=10)
    plt.title(titulo)
    labels = [i for i in args]
    plt.ylabel(yaxis+' (promedio)')
    plt.tick_params(labelsize = 9)
    plt.xticks(range(1, (int(ctype)) + 1), labels)
    plt.savefig(filename+' (promedio).png', bbox_inches = 'tight')
    plt.xticks()

def drawPlotMean(ctype, filename, titulo, yaxis, comp, *args):
    plt.switch_backend('Qt4Agg')
    fig = plt.figure(figsize=(30,6))
    ax = fig.add_subplot(1,2,1)
    toplot = []
    col = ['r','b','g','y','c','m']
    dmean = []
    for v in comp:
        dmean.append(np.mean(v))
    ax.plot( range(1, (int(ctype))+1), dmean, '-', lw=2 )
    plt.title(titulo)
    labels = [i for i in args]
    plt.ylabel(yaxis + ' (promedio)')
    plt.tick_params(labelsize = 9)
    plt.xticks(range(1, (int(ctype)) + 1), labels)
    plt.savefig(filename+' (plot mean).png', bbox_inches = 'tight')
    plt.xticks()


def drawPlotMeanLog(ctype, filename, titulo, yaxis, comp, *args):
    plt.switch_backend('Qt4Agg')
    fig = plt.figure(figsize=(30,6))
    ax = fig.add_subplot(1,2,1)
    toplot = []
    col = ['r','b','g','y','c','m']
    dmean = []
    for v in comp:
        dmean.append(np.mean(v))
    ax.set_yscale('log')
    ax.plot( range(1, (int(ctype))+1), dmean, '-', lw=2 )
    plt.title(titulo)
    labels = [i for i in args]
    plt.ylabel(yaxis + ' (promedio)')
    plt.tick_params(labelsize = 9)
    plt.xticks(range(1, (int(ctype)) + 1), labels)
    plt.savefig(filename+' (plot mean logarithmic scale).png', bbox_inches = 'tight')
    plt.xticks()


if __name__ == "__main__":
    liftData(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], *sys.argv[5:])
    ## argv[1] = ctype es la cantidad de barras o elementos a comparar (en el caso de graficar una curva)
    ## argv[2] = nombre del archivo
    ## argv[3] = titulo del grafico
    ## argv[4] = nombre del eje y
    ## *sys.argv[5:] da la lista de los nombres de las barras pasado por parametro
