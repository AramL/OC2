#include <assert.h>
#include <ctype.h>
#include <stdlib.h>
#include "lista.h"

void funcModificarString(char* p){
    while(*p != '\0'){
        *p = *p +1;
        p = p+1;
    }
}


int main (void){
    

    /**  TESTS PALABRA LONGITUD  **/


    printf("long(Hola) ");
    printf("%d\n", palabraLongitud("Hola"));
    printf("long(" ")");
    printf("%d\n" , palabraLongitud(""));
    printf("long(H) ");
    printf("%d\n", palabraLongitud("H"));
    printf("long(Hola Mundo) ");
    printf("%d", palabraLongitud("Hola Mundo"));   
    //printf(" //cuenta los espacios\n");
    printf("%s", "long(TestPalabraLongitud) ");
    printf("%d\n", palabraLongitud("TestPalabraLongitud"));

    /**  TESTS PALABRA MENOR  **/
    printf( "Hola, Hola, false, ");
    printf("%d\n", palabraMenor("Hola", "Hola"));
    assert(!palabraMenor("Hola", "Hola"));

    printf( "hola, Hola, false, ");
    printf("%d\n", palabraMenor("hola","Hola"));
    assert(!palabraMenor("hola","Hola"));

    printf( "a, b, true, ");
    printf("%d\n", palabraMenor("a","b"));
    assert(palabraMenor("a","b"));

    printf("hol, hola, true, ");
    printf("%d\n", palabraMenor("hol", "hola"));
    assert(palabraMenor("hol", "hola"));

    printf("hola, hol , false, ");
    printf("%d\n", palabraMenor("hola", "hol"));
    assert(!palabraMenor("hola", "hol"));

    printf("hola, holb, true ");
    printf("%d\n", palabraMenor("hola", "holb") );
    assert(palabraMenor("hola", "holb"));
printf "puchanga \n");

    /**  TESTS FUNCMODIFICARSTRING  **/
    printf("p = ");
    char  p[] = "chau";
    printf("%s", p);
    printf(", funcModificarString(p), resultado: ");
    palabraFormatear(p, &funcModificarString);
    printf("%s", p);
    printf("\n");

    printf("q = ");
    char q[] = "Hello World";
    printf("%s",q);
    printf(", funcModificarString(q), resultado: ");
    palabraFormatear(q, &funcModificarString);
    printf("%s", q);
    printf("\n");

    /**  TESTS PALABRA IMPRIMIR  **/
    printf("%s\n", "Abc");
    char pImp[] = "Salida a pantalla";
    palabraImprimir(pImp, stdout);
    printf("%s\n", "sali de Imprimir");
    palabraImprimir("", stdout);
    printf("%s\n", "imprimio vacio ^");

    /**  TEST PALABRACOPIAR  **/
    char k[] = "PalabraCopiada";
    char *l = palabraCopiar(k);  
    printf("%s\n", l);
    free(l);

    /**  TESTS NODO CREAR  **/
    
    nodo *nodo_test = nodoCrear(palabraCopiar("testNodoCrear"));    
    printf("%s\n", nodo_test->palabra);
 

    /**  TESTS NODO BORRAR  **/  
    nodoBorrar(nodo_test);
    printf("%s\n", "borrado");



    /**  TESTS ORACION CREAR**/
    lista *lista_test = oracionCrear();
    if(lista_test->primero == NULL)
     printf("%s\n", "lista_test->primero = NULL");

    insertarAtras(lista_test, palabraCopiar("testOracionCrear"));
    printf("%s%s\n", "(lista_test->primero)->palabra: ", (lista_test->primero)->palabra );
    printf "puchanga \n");
    insertarAtras(lista_test, palabraCopiar("Segunda Palabra"));
    printf("%s%s%s%s\n", "(lista_test->primero)->palabra: ", (lista_test->primero)->palabra , 
     " (((lista_test->primero)->palabra)->siguiente)->palabra: ", ((lista_test->primero)->siguiente)->palabra );
    printf "puchanga \n");    
    /**  TESTS ORACION BORRAR  **/

    if(lista_test != NULL)
     oracionBorrar(lista_test);
    else
     printf("%s\n", "lista vacia");


    /**   TESTS ORACION IMPRIMIR   **/

    
    lista *lista_imp = oracionCrear();
    insertarAtras(lista_imp, palabraCopiar("sneaky"));
    insertarAtras(lista_imp, palabraCopiar("beaky"));
    oracionImprimir(lista_imp, "mytest.txt", palabraImprimir );
    oracionBorrar(lista_imp);
    puts("Salio");

    // /**  TESTS LONGITUD MEDIA **/
    
    lista *lista_testdos = oracionCrear();
    insertarAtras(lista_testdos, palabraCopiar("Cuatro"));
    float longitud = longitudMedia(lista_testdos);
    printf("Longitud Promedio = %2.5f\n", longitud);
    insertarAtras(lista_testdos, palabraCopiar("Nueve"));


    
    insertarAtras(lista_testdos, palabraCopiar("Cinc"));
    insertarAtras(lista_testdos, palabraCopiar("Setenta"));
    insertarAtras(lista_testdos, palabraCopiar("Hola Mundo"));
    insertarAtras(lista_testdos, palabraCopiar("Alexander"));
    insertarAtras(lista_testdos, palabraCopiar("Asterix"));
    insertarAtras(lista_testdos, palabraCopiar("Charlemagne"));

    longitud = longitudMedia(lista_testdos);
    printf("Longitud Promedio = %2.5f\n", longitud);

    oracionBorrar(lista_testdos);

    /**   TESTS LISTA INSERTAR ORDENADO  **/
    lista *lista_testInsertarOrdenado = oracionCrear();
    
    
    insertarAtras(lista_testInsertarOrdenado, palabraCopiar("QQQQQQQQQQQQQQQ"));
    insertarOrdenado(lista_testInsertarOrdenado, palabraCopiar("Hola"), palabraMenor);
    insertarOrdenado(lista_testInsertarOrdenado, palabraCopiar("Ave"), palabraMenor);
    
    oracionImprimir(lista_testInsertarOrdenado, "mytest.txt", palabraImprimir);

    oracionBorrar(lista_testInsertarOrdenado);
    
    char *porig = palabraCopiar( "palabraACopiar" );
    char *pcopia = palabraCopiar( porig );

    printf("%s\n", porig);
    printf("%s\n", pcopia);

    free(porig);
    free(pcopia);


    /**  TESTS MENSAJE DIABOLICO  **/

    lista *lista_mensajeDiabolico = oracionCrear();
    insertarAtras(lista_mensajeDiabolico, palabraCopiar("Mensaje"));
    insertarAtras(lista_mensajeDiabolico, palabraCopiar("del"));
    insertarAtras(lista_mensajeDiabolico, palabraCopiar("Diabolo"));
    

    descifrarMensajeDiabolico(lista_mensajeDiabolico, "mytest.txtt", palabraImprimir);
    
    oracionBorrar(lista_mensajeDiabolico);
    return 0;
}
