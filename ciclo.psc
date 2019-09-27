Algoritmo Ciclo 
	// 1. Bloque Declaracion de Variables
	Definir x             					Como Entero          // Se define La variable para Almacenar el Valor del Contador en el ciclo PARA
	Definir VInicial      					Como Entero          // Se define La variable para Almacenar el Valor de entrada el cual sera el parametro Inicial  en el ciclo PARA
	Definir VFinal        					Como Entero          // Se define La variable para Almacenar el Valor de entrada el cual sera el parametro Final en el ciclo PARA
	Definir VIncremento   					Como Entero          // Se define La variable para Almacenar el Valor de entrada el cual sera el parametro del Incremento o Decrememto del  ciclo PARA
	Definir Generar       					Como Caracter        // Se define La variable para Almacenar el Valor de P si el Listado es Progresivo o R si es Regresivo 
	Definir  TodoBienParaProgresivo         Como Entero          // Se define La variable para Almacenar el Valor para determinar  si los parametros de VIncial,VFinal y Vincremento 
																 // son validos y  cumplen segun la norma que los define Para ser un listado Progresivo 
	Definir  TodoBienParaRegresivo          Como Entero          // Se define La variable para Almacenar el Valor para determinar  si los parametros de VIncial,VFinal y Vincremento 
	                                                            //  son validos y  cumplen segun la norma que los define Para ser un listado Regresivo   
	// 2. Bloque entrada de Datos para las Variables a Utilizar en los calculos del Ciclo PARA  
	BorrarPantalla                                              // Barro la Panatalla antes de pedir los calculos   
	Escribir '------------------------------------------------'
	Escribir '       Ingresar Datos Para Generar Listado      '
	Escribir '------------------------------------------------'
	Escribir '                                 Valor Inicial ?' Sin Saltar
	Leer VInicial                          						// Se lee el valor Inicial Para el ciclo PARA
	Escribir '                                   Valor Final ?' Sin Saltar
	Leer VFinal                             					// Se lee el valor Final Para el Ciclo PARA 
	Escribir '                          Valor Del Incremento ?' Sin Saltar
	Leer VIncremento                        			      // Se lee el valor del Incremento  Para el Ciclo PARA  
	// 3.Bloque de Procesos Datos 
	Generar=""                                               // Inicializamos la variable que no controlara el tipo de listado Progresivo o Regresivo
	TodoBienParaProgresivo=0                                 // Inicializamos la variable que controlara si existe Error en las parametros de entrada para un listado Progresivo 
	TodoBienParaRegresivo=0                                  // Inicializamos la variable que controlara si existe Error en las parametros de entrada para un listado Regresivo
	Si VInicial <= VFinal  Entonces                          // La sentencia selectiva simple para determinar se es Progresivo el listado
		Generar="P"                                          // Si se cumple la sentencia entonces es un listado Progresivo 
		Si 0 < VIncremento Entonces                          // La sentencia selectiva simple determina si el valor del Incremento es un numero positivo lo cual lo hace valido, no puede ser 0
			TodoBienParaProgresivo=1                         //  Se cumple entonces es un listado Progresivo sin error en los parametros para el ciclo PARA
		FinSi
	FinSi
	Si VInicial > VFinal  Entonces                          // La sentencia selectiva simple para determinar si es Regresivo  el listado
		Generar="R"                                         // Si se cumple la sentencia entonces es un listado Regresivo
		Si  0 > VIncremento Entonces                       // La sentencia selectiva simple determina si el valor del Incremento es un numero Negativo lo cual lo hace valido, no puede ser 0  
			TodoBienParaRegresivo=1	                       //  Se cumple entonces es un listado Regresivo sin error en los parametros para el ciclo PARA
		FinSi
	FinSi
	// Bloque de Salida 
	Si Generar = 'P'   Entonces                             // La sentencia selectiva simple para determinar si es Prograsivo el listado
		Si  TodoBienParaProgresivo=0   Entonces            // La sentencia selectiva simple para determinar si Existe Error en las Parametros del ciclo PARA
			Escribir '   ------------------------------------------------- '
			Escribir ''
			Escribir ''
			Escribir '   ** ERROR EN DATOS PARA GENERAR LISTADO  PROGRESIVO '
			Escribir ''
			Escribir ''
		Finsi
		Si  TodoBienParaProgresivo=1   Entonces            // La sentencia selectiva simple para determinar 
			                                               // si todo esta bien con los Parametros del ciclo PARA y por lo tanto se ejecuta el listado
			Escribir ' '
			Escribir ' Listado Progresivo    ' 
			Escribir ' '
			Para x<-VInicial   Hasta Vfinal   Con Paso VIncremento   Hacer  // Hacer el ciclo PARA e imprimir el Valor de x
				Escribir  x,', ' sin saltar 
			Finpara
		FinSi
	Finsi
	Si Generar = 'R'   Entonces                          // La sentencia selectiva simple para determinar si es Regresivo el listado
		Si  TodoBienParaRegresivo=0   Entonces           // La sentencia selectiva simple para determinar si Existe Error en las Parametros del ciclo PARA
			Escribir '   ------------------------------------------------- '
			Escribir ''
			Escribir ''	
			Escribir '   ** ERROR EN DATOS PARA GENERAR LISTADO  REGRESIVO   '
			Escribir ''
			Escribir ''
			 
		Finsi
		Si  TodoBienParaRegresivo=1   Entonces        // La sentencia selectiva simple para determinar 
													  // si todo esta bien con los Parametros del ciclo PARA y por lo tanto se ejecuta el listado
			Escribir ' '
			Escribir ' Listado Regresivo  ' 
			Escribir ' '
			Para x<-VInicial   Hasta Vfinal   Con Paso VIncremento   Hacer  // Hacer el ciclo PARA e imprimir el Valor de x
				Escribir  x,',' sin saltar 
			FinPara 
		FinSi
	Finsi
	Escribir ''
	Escribir ''
	Escribir '            Pulso Una Tecla Para Continuar  ' 
	Escribir '   ------------------------------------------------- '
	Esperar tecla                                   // pulsar tecla para continuar
	BorrarPantalla                                  // Barro la Panatalla antes de  Terminar el Programa 
FinAlgoritmo   // 1692019-7.35
  
