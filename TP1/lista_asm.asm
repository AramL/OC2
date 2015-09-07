
; PALABRA
	global palabraLongitud
	global palabraMenor
	global palabraFormatear
	global palabraImprimir
	global palabraCopiar
	
; LISTA y NODO
	global nodoCrear
	global nodoBorrar
	global oracionCrear
	global oracionBorrar
	global oracionImprimir

; AVANZADAS
	global longitudMedia
	global insertarOrdenado
	global filtrarPalabra
	global descifrarMensajeDiabolico

; YA IMPLEMENTADAS EN C
	extern palabraIgual
	extern insertarAtras

	extern malloc
	extern free
	extern fprintf
	extern fopen
	extern fclose

; /** DEFINES **/    >> SE RECOMIENDA COMPLETAR LOS DEFINES CON LOS VALORES CORRECTOS
	%define NULL 		0
	%define TRUE 		1
	%define FALSE 		0

	%define LISTA_SIZE 	    	 8
	%define OFFSET_PRIMERO 		 0

	%define NODO_SIZE     		 16
	%define OFFSET_SIGUIENTE   	 0
	%define OFFSET_PALABRA 		 8


section .rodata


section .data
	appendMode: 		 db "a", 0
	LF:		  			 db "%s", 10, 0
	sinMensajeDiabolico: db "<sinMensajeDiabolico>", 0	
	oracionVacia:		 db "<oracionVacia>", 0
section .text


;/** FUNCIONES DE PALABRAS **/
;-----------------------------------------------------------

	; unsigned char palabraLongitud( char *p );
	palabraLongitud:
		push rbp
		mov rbp, rsp
		xor rax, rax			;Ponemos rax en 0, ya que vamos a devolver el resultado en la parte baja de rax
		.ciclo:
			inc al				;Entramos sumando de una, si nos pasan "" vamos a restar al final asi que no importa
			cmp byte[rdi], 0	;comparamos para ver si a donde apuntamos es '\0'
			lea rdi, [rdi+1]	;Incrementamos la dirección de memoria a donde apuntabamos
			jnz .ciclo			;salta mientras el char sea distinto de \0
		dec al	
		pop rbp					;Decrementa una vez al final porque siempre cuenta \0
		ret

	; bool palabraMenor( char *p1, char *p2 );
	palabraMenor:
		push rbp
		mov rbp, rsp
		xor rax, rax			;rax en 0 asi devolvemos en al 
		.ciclo:
			mov dl, [rdi]		;Pongo en rdx y rcx lo que hay en las direcciones de memoria 
			mov cl, [rsi]
			cmp dl, cl			;Comparo los 8 bits mas bajos, es decir donde estan los chars
			jb .true			;Cuando encuentra un char menor estrictamente que el otro breakea es decir la palabra si es menor
			ja .false			;Si es mayor breakea para false y sino sigue loopeando hasta encontrar el final
			cmp dl, 0			;Si llego al final sin breakear antes tenemos que las palabras son iguales ya que de otra manera hubiera breakeado antes
			jz .false			;Por ejpemplo si eran "yy\0", "yyy\0" hubiera salido cuando comparase "\0" con "y"
			inc rdi				;Adelanto en un byte en los 2 punteros
			inc rsi				
			jmp .ciclo			;Loopeo incondicionalmente
		.false:
			pop rbp
		 	ret 
		.true:
		 	pop rbp
		 	inc al
		 	ret

	; void palabraFormatear( char *p, void (*funcModificarString)(char*) );
	palabraFormatear:
		push rbp				;stackframe
		mov rbp, rsp			;stackframe
		call rsi 				;Como el valor a modificar ya esta en rdi hacemos la llamada a la funcion, es decir a rsi
		pop rbp					
		ret

	;void palabraImprimir( char *p, FILE *file );
	palabraImprimir:
		push rbp
		mov rbp, rsp
		cmp rdi, NULL
		jne .imprimirNoVacio
		mov rdi, rsi
		mov rsi, 0
		call fprintf
		jmp .end
		.imprimirNoVacio:
			mov r8, rdi
			mov rdi, rsi
			mov rsi, LF
			mov rdx, r8
			call fprintf
		.end:
		pop rbp
		ret
		; push rbp          
		; mov rbp, rsp
		; push r12
		; push r13        			;fprint nos pide los argumentos al reves (rsi <-> rdi)
		; mov r12, rdi				;pero ademas tenemos que pasarle %s\n 
		; mov r13, rsi
		; mov rdx, rdi				;rdx apunta al char
		; mov rdi, rsi				;rdi apunta al FILE 
		; mov rsi, LF 				;%s\n
		; call fprintf
		; mov rdi, r12				;rsi y rdi retornan con su valor original
		; mov rsi, r13				;es decir rsi con el string y rdi con el FILE
		; pop r13
		; pop r12
		; pop rbp
		; ret 




	; char *palabraCopiar( char *p );
	palabraCopiar:
		push rbp
		mov rbp, rsp				;stackframe
		push r12					;r12 va a guardar la direccion del string a copiar
		push r13					;r13 va a guardar la longitud de la palabra

		mov r12, rdi				;Guardamos en r12 rdi para no perder el puntero al string que pasamos
		

		call palabraLongitud		;llamo a palabra longitud con el char en rdi
		mov r13, rax
		mov rdi, r13					;sumo 1 para \0
		inc rdi
		call malloc					;tenemos el puntero a la memoria en rax
		mov rdi, rax
		cmp r13, NULL				;Si la longitud es 0 agregamos null y, salimos,
		je .salida					;y rax sale con 0 es decir null
		xor rcx, rcx
		mov rcx, r13				;ponemos la longitud en rcx
		.ciclo:				
			mov r8b, byte[r12]		;movemos el ontenido de rdi+algo a r8
			mov byte[rax], r8b		;copiamos el char
			inc rax					;nos movemos una posicion mas
			inc r12					;"apuntamos" al siguiente char
		loop .ciclo					
		.salida:
			mov byte[rax], NULL		;ponemos el \0		
			mov rax, rdi			;preparamos para devolver en rax		
			pop r13
			pop r12
			pop rbp						
			ret				

;/** FUNCIONES DE LISTA Y NODO **/
;-----------------------------------------------------------

	; nodo *nodoCrear( char *palabra );
	nodoCrear:								;nodo *nodoCrear(char *palabra)
		push rbp
		mov rbp, rsp						
		push r12		
		sub rsp, 8								;STACK FRAME
		mov r12, rdi							;guardo la direccion del string
		mov rdi, NODO_SIZE						;Preparo la llamada a malloc con el tamaño del nodo 
		call malloc
		mov qword[rax+OFFSET_SIGUIENTE], NULL 	;el siguiente apunta a null 
		mov [rax+OFFSET_PALABRA], r12			;el valor del nodo apunta al string 
		add rsp, 8
		pop r12
		pop rbp
		ret

	; void nodoBorrar( nodo *n );
	nodoBorrar:
		push rbp
		mov rbp, rsp						
		push r12		
		sub rsp, 8							;STACK FRAME
		mov r12, rdi						;guardo la direccion del string
		mov rdi, [r12+OFFSET_PALABRA]		;paso la direccion guardada en [r12+OFFSET_PALABRA] a rdi para liberar el string
		call free	
		lea rdi, [r12]						;libera el nodo 
		call free
		add rsp,8
		pop r12
		pop rbp
		ret

	; lista *oracionCrear( void );
	oracionCrear:
		push rbp
		mov rbp, rsp
		mov rdi, LISTA_SIZE 
		call malloc
		mov qword[rax+OFFSET_PRIMERO], NULL
		pop rbp
		ret

	; void oracionBorrar( lista *l );
	oracionBorrar:
		push rbp
		mov rbp, rsp
		push r12
		sub rsp, 8
		mov r12, [rdi+OFFSET_PRIMERO]				;r12 apunta a lo que apunta la lista
		call free									;llama free a la lista
		cmp r12, NULL								;si no existe un primer nodo, libero la lista y salgo del programa
		jne .borrarResto							;Sino entro a borra el nodo a la lista (r12 mantiene el puntero al primero)
		jmp .fin									;Y empieza a borrar los nodos que siguen
		.borrarResto:
			mov rdi, r12							;rdi apunta al siguiente nodo (si entramos acà por lo menos hay uno)
			mov r12, [r12+OFFSET_SIGUIENTE]			;r12 apunta al proximo nodo (puede ser null)
			call nodoBorrar 						;antes de terminar liberamos el nodo donde estabamos parados en rdi
			cmp r12, NULL							;comparamos si es null y si lo es terminamos el loop
		jne .borrarResto							
		.fin:
		add rsp,8
		pop r12
		pop rbp		
		ret



	; void oracionImprimir( lista *l, char *archivo, void (*funcImprimirPalabra)(char*,FILE*) );
	oracionImprimir:
		push rbp
		mov rbp, rsp
		push r12
		push r13
		push r14							 ;vamos a guardar los valores pasados por la funcion en r12 r13 y r14 respectivamente 
		sub rsp, 8
		mov r12, rdi
		mov r14, rdx
		mov rdi, rsi				  		 ;le pasamos el nombre del archivo a rdi para llamar a fopen
		mov rsi, appendMode 			  	 ;rdi va a guardar el modo (char) "w" de escritura para fopen
		call fopen					   		 ;llamamos fopen(archivo, "a"), rax tiene el puntero a FILE 
		mov r13, rax						 ;guardamos el puntero al archivo para imprimir y cerrar
		mov r12, [r12+OFFSET_PRIMERO]
		cmp r12, NULL 						 ;Checkeamos si la lista esta vacia
		je .endVacio				   		 ;Si lo esta saltamos a end donde desarmamos el stackframe y devolvemos
		.imprimirLoop:
			mov rsi, r13 	
			mov rdi, [r12+OFFSET_PALABRA]	 ;rsi tiene el valor de la direccion de la palabra 
			call r14 		   				 ;llamamos funcImprimirPalabra("%s", [r12+OFFSET_PALABRA], rsi) (FILE)
			mov r12, [r12+OFFSET_SIGUIENTE]  ;r12 apunta al siguiente
			cmp r12, NULL					 ;Si el siguiente no es null seguimos loopeando
	 		jne .imprimirLoop				 ;y sino,
	 		jmp .endNoVacio
	 	.endVacio:
	 	mov rdi, oracionVacia
	 	mov rsi, r13
	 	call r14
	 	.endNoVacio:
	 	mov rdi, r13 						 ;Movemos el puntero a file a rdi 
 		call fclose 						 ;cerramos el archivo, desarmamos el stackframe y devolvemos	
 		add rsp, 8		
		pop r14
		pop r13
		pop r12
		pop rbp
		ret



;/** FUNCIONES AVANZADAS **/
;-----------------------------------------------------------

	; float longitudMedia( lista *l );
	longitudMedia:
		push rbp
		mov rbp, rsp
		push r12										;r12 va a servir para iterar sobre los nodos 
		push r13										;r13 va a guardar el valor de la suma de las longitudes  
		push r14										;y r14 va a contar la cantidad de palabras en la lista
		sub rsp, 8										;stackframe
		;xor rax, rax									;Ponemos rax en 0
		mov rdi, [rdi+OFFSET_PRIMERO]
		cmp rdi, NULL						 			;Si el primero de la lista es null el promedio es 0
		je .end											;Sino vamos a contar la longitudMedia
		xor r12, r12									;Voy a guardar en rdx el contenido de la suma de las longitudes
		xor r13, r13									;En r8 voy a contar la cantidad de palabras que hay
		.suma:
			mov r12, [rdi+OFFSET_SIGUIENTE]				;r12 ahora apunta al primer nodo 
			mov rdi, [rdi+OFFSET_PALABRA]				;pongo en rdi la direccion al string para calcular su longitud 
			call palabraLongitud						;tenemos la longitud de la palabra en rax
			mov rdi, r12
			add r13, rax								;se la sumamos a 13
			inc r14										;r14 va a contar la cantidad de palabras que hay
			cmp r12, NULL								;vemos si el nodo actual apunta a NULL
		jne .suma										;Si es null dejamos de sumar, y pasamos a la division
		;movq xmm0, r13
		;movq xmm1, r14
		cvtsi2ss xmm0, r13								;convertimos los numeros en punto flotante
		cvtsi2ss xmm1, r14								;xmm0 va a ser el dividendo y xmm1 el divisor
		divss xmm0, xmm1 								;division
		.end:
		add rsp, 8										;desarmamos el stack frame
		pop r14
		pop r13
		pop r12
		pop rbp
		ret

	; void insertarOrdenado( lista *l, char *palabra, bool (*funcCompararPalabra)(char*,char*) );
	insertarOrdenado:
		push rbp
		mov rbp, rsp
		push r12   					
		push r13
		push r14								;r14 tiene la direccion de la funcion
		push r15
		mov r12, rdi
		mov r13, rsi
		mov r14, rdx
		mov rbx, rdi
		mov rdi, r13 
		call nodoCrear 							;creo el nodo y lo guardo en r15
		mov r15, rax
		cmp qword[r12+OFFSET_PRIMERO], NULL		;r12 apunta al primer elemento
		je .pegarFinal
		.ciclo:
			mov r8, r12 						;r8 va a guardar el nodo anterior
			mov r12, [r12+OFFSET_SIGUIENTE]
			cmp r12, NULL
			je .pegar	
			mov rdi, [r12+OFFSET_PALABRA]
			mov rsi, [r15+OFFSET_PALABRA]
			call r14
			cmp rax, TRUE
			je .ciclo
			.pegar:
				mov [r8+OFFSET_SIGUIENTE], r15
				mov [r15+OFFSET_SIGUIENTE], r12
				jmp .end
		.pegarFinal:
			mov [r12+OFFSET_SIGUIENTE], r15		;apunto al nodo que cree que esta guardado en r15
		.end:
		pop r15
		pop r14
		pop r13
		pop r12
		pop rbp
		ret	

	; void filtrarPalabra( lista *l, bool (*funcCompararPalabra)(char*,char*), char *palabraCmp );
	filtrarPalabra:
		push rbp
		mov rbp, rsp
		push r12
		push r13
		push r14
		push r15
		mov r12, rdi							;r12 va a iterar sobre la lista
		cmp qword[r12+OFFSET_PRIMERO], NULL		;Si la lista esta vacia no hay nada que remover
		je .end									;sino
		mov r14, rsi							;muevo a r14 el puntero a la funcion que compara
		mov r15, rdx							;muevo a r15 la palabra a comparar
		mov r13, r12
		.recorrido:
			;r12 apunta al siguiente, notar que era el puntero a la lista al principio
			;y por lo tanto OFFSET_SIGUIENTE es el mismo offset que OFFSET_PRIMERO, 
			;también uso esto en insertarOrdenado cuando la lista esta vacia y agrega al final
			mov r12, [r13+OFFSET_SIGUIENTE]		
			mov rdi, [r12+OFFSET_PALABRA]		
			mov rsi, r15										
			call r14							;comparo las 2 palabras 
			cmp rax, FALSE
			jne .siguiente
				mov rcx, [r12+OFFSET_SIGUIENTE]
				mov [r13+OFFSET_SIGUIENTE], rcx		;r13 apunta al siguiente de r12
				mov rdi, r12
				call nodoBorrar 
				cmp qword[r13+OFFSET_SIGUIENTE], NULL
				jne .recorrido
				je .end
		.siguiente:
			mov r13, r12						;r13 siempre apunta al nodo anterior de forma que al borrar podamos mantener la lista
			cmp qword[r12+OFFSET_SIGUIENTE], NULL
			jne .recorrido
		.end:
		pop r15
		pop r14
		pop r13
		pop r12
		pop rbp
		ret 

	



	; void descifrarMensajeDiabolico( lista *l, char *archivo, void (*funcImpPbr)(char*,FILE* ) );
	descifrarMensajeDiabolico:
		push rbp
		mov rbp, rsp
		push r12
		push r13
		push r14
		push r15
		mov r12, rdi
		mov r14, rdx
		mov rdi, rsi
		mov rsi, appendMode  							;elejimos modo append para escribir al final 
		call fopen										;abrimos el archivo
		mov r15, rax									;guardamos en rax el puntero a file
		cmp qword[r12+OFFSET_PRIMERO],NULL				;checkeamos si la lista esta vacia 
		je .endVacio 									;Si lo esta saltamos a endNoVacio e imprimos el mensaje diabólico
		xor  r13, r13									;r13 es 0, lo vamos a usar de contador par ael ciclo
		mov r12, [r12+OFFSET_PRIMERO]					;r12 apunta al primer nodo, que existe pués no seria vacia la lista
		.cicloPush:										;
			mov rdi, [r12+OFFSET_PALABRA]				;rdi tiene la primer palabra 
			push rdi									;la pusheamos al stack 
			sub rsp, 8									;y alineamos los 8 bytes restantes
			inc r13										;incrementamos r13 por cada palabra 
			mov r12, [r12+OFFSET_SIGUIENTE]				;adelantamos r12 a apuntar al nodo siguiente (puede ser null)
			cmp r12, NULL								;si lo es terminamos el ciclo 
			jne .cicloPush								;sino repetimos y agregamos la proxima palabra al stack
		.cicloPop:
			add rsp, 8									;nos preparamos para hacer un pop a rdi y obtener la palabra 
			pop rdi										;pop rdi, esto nos permite obtener la lista en orden inverso
			mov rsi, r15								;gracias al stack. Ahora preparamos la llamada a la función imprimir
			call r14									;llamamos a funcImpPbr
			dec r13										;le restamos a r13 que tenia el total de las palabras 
			cmp r13, NULL								;Si r13 es 0 (NULL), entonces terminamos el ciclo y vamos al final
			jne .cicloPop								
			jmp .endNoVacio
		.endVacio:										
		mov rdi, sinMensajeDiabolico                    ;Si la lista esta vacia imprimo el sinMensajeDiabolico con 
		mov rsi, r15									;funcImpPbr
		call r14	
		.endNoVacio:
		mov rdi, r15
		call fclose
		pop r15											;desarmamos el stackframe y ponemos
		pop r14											;los valores que correspondian a los registros que hay que mantener
		pop r13
		pop r12
		pop rbp
		ret


