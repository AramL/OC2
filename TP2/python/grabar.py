import sys

def grabar(first, filename, towrite):
  if first == 'guardar':
    with open(filename, 'a') as f:
      f.write(str(towrite))
      f.write(" ")
      f.close()
  else:
    with open(filename, 'a') as f:
      f.write("\n")
      f.close()

if __name__ == "__main__":
  grabar(sys.argv[1], sys.argv[2], sys.argv[3])


## Hacer funcion para los 3 compiladores

## funcion para testear filtro en C vs ASM

## funcion para testear (curva) el rendimiento de un filtro en algun
## lenguaje vs tamano
