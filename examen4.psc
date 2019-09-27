Algoritmo PagoDeAlquiler
	// 1. Bloque Declaracion de Variables
	Definir Nacionalidad      Como Caracter           			// Se define La variable  para Almacenar el Valor de entrada de la Nacionalidad [V]enezolano  o  [E]xtranjero.
	Definir NumCedula         Como Entero            			// Se define La variable  para Almacenar el Valor Valor de entrada del Numero de  cedula.    
	Definir PriNombre         Como Caracter           			// Se define La variable  para Almacenar el Valor de entrada  Del Primer Nombre de la Persona. 
	Definir MayuPrinombre     Como Caracter           			// Se define La variable  para Almacenar el Valor Del la Primera Letra del Nombre de la persona en Mayuscula.   
	definir TamanoPriNombre   Como Entero             			// Se define La variable  para Almacenar el Valor Del de la Longitud del Primer Nombre de la persona.   
	Definir PriApellido       Como Caracter           			// Se define La variable  para Almacenar el Valor de entrada  Del Primer Apellido de la Persona.    
	Definir MayuPriApellido   Como Caracter          			// Se define La variable  para Almacenar el Valor Del la Primera Letra del Apellido de la persona en Mayuscula. 
	Definir TamanoPriApellido Como Entero             			// Se define La variable  para Almacenar el Valor Del de la Longitud del Primer Apellido de la persona.
    Definir MayusNacionalidad Como Caracter           			// Se define La variable  para Almacenar el Valor de la Nacionalidad En Mayuscula.
	Definir CedulaCaracter    Como Caracter           			// Se define La variable  para Almacenar el Valor de la Cedula como Caracter. 
	Definir CedulaFormato     Como Caracter          		 	// Se define La variable  para Almacenar el Valor del formato de salida para la cedula.
    Definir UltimoDigito      Como Entero             			// Se define La variable  para Almacenar el Valor al Azar entre 0 y 9  
	Definir Rif               Como Caracter           			// Se define La variable  para Almacenar el formato del RIF
    Definir AnoNacimiento     Como Entero             			// Se define La variable  para Almacenar el Valor de entrada de la fecha de Nacimiento 
	Definir AnoActual         Como Entero             			// Se define La variable  para Almacenar el Valor Constante del  Año en curso
	Definir Edad              Como Entero             			// Se define La variable  para Almacenar el Valor del calculo de la edad de la persona 
	Borrar Pantalla                                				// Para Limpiar la pantalla    
	// 2. Bloque entrada de Datos  
	Escribir '  ' 
	Escribir '  ' 
	Escribir '  ' 
	Escribir '                  INGRESAR DATOS DE LA PERSONA   '
	Escribir '                 ------------------------------ '
	Escribir ' Nacionalidad [V]enezolano o [E]xtranjero)? ' Sin Saltar  
	Leer  Nacionalidad                                                	// Se Ingresa la Nacionalidad  expresada en un caracter y se almacena en la variable Nacionalidad
	Escribir '                              Nº de Cédula? ' Sin Saltar   
	Leer  NumCedula                                                   	// Se Ingresa El numero de cedula de la persona y se almacena en la variable NumCedula
	Escribir '                             Primer Nombre? ' Sin Saltar   
	Leer  PriNombre                                                  	 // Se Ingresa El Primer Nombre de la persona  y se almacena en la variable PriNombre
	Escribir '                           Primer Apellido? ' Sin Saltar   
	Leer  PriApellido                                                	// Se Ingresa El Primer Apellido de la persona  y se almacena en la variable PriApellido 
	Escribir '                         Año de Nacimiento? ' Sin Saltar   
	Leer   AnoNacimiento                                            	// Se Ingresa La fecha de nacimiento de la persona   y se almacena en la variable  FechaNacimiento
    Escribir '  ' 
	Escribir '  ' 
	Escribir '  ' 
	Escribir '  Presiona Cualquier Tecla Para Ver los Resultados     '  
	esperartecla                                                                // Espera por tecla
	Borrar Pantalla                                                             // Para Limpiar la pantalla 
	// 3.Bloque de Procesos Datos
	// 3.1 Bloque de Procesos para Cedula
	MayusNacionalidad=MAYUSCULAS(Nacionalidad)                       			// Se Convierte el Valor de la Variable Nacionalidad en Mayuscula usando la funcion  MAYUSCULAS( )
	CedulaCaracter= ConvertirATexto(NumCedula)                       			// Se Convierte la variable NumCedula a Caracter la funcion  ConvertirATexto( )
    CedulaFormato= MayusNacionalidad+'-'+CedulaCaracter              			// Se concatena  las variables para formar el formato requerido en el ejercicio
	// 3.2 Bloque de Procesos para el 1er Nombre
	TamanoPriNombre=Longitud(PriNombre)                              			// Se calcula la longitud del primer nombre para hacer uso em la formula de Subcadena  
	MayuPriNombre=MAYUSCULAS(Subcadena(PriNombre,1,1))               			// Se Convierte la primera letra del Nombre en Mayuscula usando la funcion  MAYUSCULAS( )
	PriNombre= MayuPrinombre+Minusculas(Subcadena(PriNombre,2,TamanoPriNombre)) // Se Concatena el Primer nombre   segun el formato requerido en el ejercicio
	// 3.3 Bloque de Procesos para el 1er Apellido  
	TamanoPriApellido=Longitud(PriApellido)										// Se calcula la longitud del primer Apellido para hacer uso em la formula de Subcadena  
	MayuPriApellido=MAYUSCULAS(Subcadena(PriApellido,1,1)) 						// Se Convierte la primera letra del Apellido en Mayuscula usando la funcion  MAYUSCULAS( )
	PriApellido= MayuPriApellido+Minusculas(Subcadena(PriApellido,2,TamanoPriApellido))  // Se Concatena el Primer Apellido    segun el formato requerido en el ejercicio
	// 3.4 Bloque de Procesos para el RIF
	UltimoDigito=azar(10) 														// Se calcula un numero al azar para colocalor como ultimo digito del Rif   
	Rif=CedulaFormato+'-'+ConvertirATexto(UltimoDigito)                         // Se Concatena la variable CedulaFormato y ultimo digito segun el formato requerido en el ejercicio
	// 3.5 Bloque de Procesos para Calculo de la Edad 
	AnoActual= 2019																// Se define una constante con el año actual para hacer los calculos y determinar la edad aproximada de la persona
	Edad = AnoActual - AnoNacimiento 											// Se calcula la operacion de resta para determinar la edad de la persona y se almacena em al variable Edad

	// 4. Bloque Salida de Datos 
	Escribir '  ' 
	Escribir '  ' 
	Escribir '  ' 
	Escribir '  ' 
	Escribir '  ' 
	Escribir '  ' 
	Escribir '              Espere Mientras se Realizan Los Calculos      '  
	Esperar 3 segundos                                                           // Espera por 3 segundos
	Borrar Pantalla																 // Para Limpiar la pantalla 
	Escribir '  ' 
	Escribir '  ' 
	Escribir '  ' 
	Escribir '                     Impresion en Formatos Requerido ' 
	Escribir '                     --------------------------------- '
	Escribir ' 			        Nº. De Cédula ' 
	Escribir '                                ',CedulaFormato                    // Se imprime por pantalla cedula segin formato Cédula {Letra-########. Ej: V-1234567}
	Escribir ' 	     1er Apellido, 1er Nombre ' 
	Escribir '                                ',PriNombre ', '+PriApellido       // Se imprime por pantalla 1er Apellido, 1er Nombre (Inicial en mayúscula y el resto en minúsculas) 
	Escribir ' 					 RIF personal ' 	
	Escribir '                                ', Rif                             // Se imprime por pantalla RIF personal {Letra-########-#. Ej: V-1234567-0} 
	Escribir '                                ', ConvertirATexto(Edad),' Años de Edad.'  // Se imprime por pantalla Edad (aprox) de la persona sin usar variable que la contenga como tipo caracter directo a la pantalla 
	
	
FinAlgoritmo
  
