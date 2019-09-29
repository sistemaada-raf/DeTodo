Algoritmo club
	// 1. Bloque Declaracion de Variables
	Definir descuentoGeneral    								Como real      // Se define La variable para Calcular y Almacenar el Valor Del Descuento General
	Definir descuentoMiembro       								Como real      // Se define La variable para Calcular y Almacenar el Valor Del Descuento Si es Miembro del club 
	Definir descuentoAplicar 									Como real      // Se define La variable para Calcular y Almacenar el Valor Del Descuento A aplicar dependiendo de las condicines 
	Definir boletoVip  											Como Entero    // Se define La variable para Almacenar el Valor Del Boleto Vip
	Definir boletoPreferencial     								Como Entero    // Se define La variable para Almacenar el Valor Del Boleto Preferencial
	Definir boletoGeneral	       							    Como Entero    // Se define La variable para Almacenar el Valor Del Boleto General    
    Definir bienEscritoTipoEntrada          					Como Entero    // Se define La variable para Determinar si no tiene errores de validacion la variable Tipo de entrada
	Definir bienEscritomiembroClub                              Como Entero    // Se define La variable para Determinar si no tiene errores de validacion la variable si es o no Miembro del club
	Definir bienEscritoNumero 			                        Como Entero    // Se define La variable para Determinar si no tiene errores de validacion la variable Cantidad de Entradas
	Definir procesarDatos   									Como Entero    // Se define La variable para Determinar si Todos los datos de entrada estan bien escritos
	Definir valorBoleto 							            Como Entero    // Se define La variable para Almacenar el Valor Del Boleto
	Definir cantidadcomprar   	            				    Como Entero    // Se define La variable para Almacenar el Valor de La cantidad de Boletos
	Definir nombreEntrada 										Como Caracter  // Se define La variable para Almacenar el Nombre completo del Tipo de Localidad  
	Definir tipoEntrada 										Como Caracter  // Se define La variable para Almacenar el Valor del Tipo de Localidad  
	Definir miembroClub 										Como Caracter  // Se define La variable para Almacenar el Valor de si es o no mienbro del club 
	// 2. Bloque entrada de Datos para las Variables a Utilizar en los calculos de los procesos y determinacion de los Objetivos
	BorrarPantalla                                               
	Escribir '---------------------------------------------------'
	Escribir '       Ingresar Datos Para La Compra de Boletos      '
	Escribir '---------------------------------------------------'
	Escribir '                  Cantidad De Entradas a Comprar ?' Sin Saltar
	Repetir
		 Leer  cantidadcomprar        	
	 Mientras Que (cantidadcomprar<0)
	  
	//Escribir '                  Cantidad De Entradas a Comprar ?' Sin Saltar
	//Leer  cantidadcomprar                                                   // Se lee el valor Inicial Para la cantidad de Entrada a comprar 
	 Escribir 'Tipo de Localidad [V]ip [P]referencial [G]eneral ?' Sin Saltar
	 Repetir
		 Leer tipoEntrada   
	 Hasta Que mayusculas(tipoEntrada) =("V") o  mayusculas(tipoEntrada) =("P") o mayusculas(tipoEntrada) =("G")
	                    						       // Se lee el valor Inicial Para el tipo de Entrada a comprar 
	Escribir '                  Es Miembro del Club [S]i  [N]o ?' Sin Saltar
	Repetir
		Leer miembroClub   
	Hasta Que  mayusculas(miembroClub) =("S") o  mayusculas(miembroClub) =("N")
	//Leer miembroClub                                                       // Se lee el valor Inicial Para el determinar si es o no miembro del club  
	// 3.Bloque de Procesos Datos 
	// 3.1 Validar tipo de Localidad , Tipo de Respuesta para el Miembro del club y Cantidad de Entradas
	boletoVip=50000                                                        // Inicializamos la variable con el valor del precio para la localidad Vip
	boletoPreferencial=35000                                               // Inicializamos la variable con el valor del precio para la localidad Preferencial
	boletoGeneral=10000  												   // Inicializamos la variable con el valor del precio para la localidad General 
	bienEscritoTipoEntrada=0                                               // Inicializamos la variable que controlara si existe Error en el tipo de Localidad en la Entrada
	bienEscritoMiembroClub=0											   // Inicializamos la variable que controlara si existe Error en el la Respuesta en si es mmiembro del club
	bienEscritoNumero=0                                                    // Inicializamos la variable que controlara si existe Error en la cantidad de entrada a comprar 
	valorBoleto=0 														   // Inicializamos la variable con el valor 0 para despues asignarle el valor correspondiemnte
	procesarDatos=0                                                        // Inicializamos la variable con el valor 0  para determinar si se puede procesas, hacer calculos e imprimir resultados
	nombreEntrada= ""        
	tipoEntrada = mayusculas(tipoEntrada) 
	miembroClub = mayusculas(miembroClub) 
	
	
	// Se utiliza la funcion Mayusculas para asignar  que la letra sea mayuscula en esta variable
	//miembroClub = mayusculas(miembroClub)    				// Se utiliza la funcion Mayusculas para asignar  que la letra sea mayuscula en esta variable
	SI 0 < cantidadcomprar            						// La sentencia selectiva simple para hacer el proceso de validar si la cantidad es valida y hacer las demas validaciones
		bienEscritoNumero=1          						 // Se coloca la Variable en 1 pues el numero de entradas en positivo y valido
		SI tipoEntrada="V"            						// La sentencia selectiva Doble  para Comparar si tipo de entrada es Vip
			bienEscritoTipoEntrada=1  						// Se coloca la Variable en 1 pues el Tipo de localidad  Vip es valida
			valorBoleto=boletoVip     						// El valor del boleto es el valor de la entrada Vip
			nombreEntrada="Vip "     						//  Se Asignan  El nombre completo del la Localidad que es Vip
		SiNo                                        	// Sino se evalua nuevamente el tipo de localidad ahora es Preferencial
			SI tipoEntrada="P"                      	// La sentencia selectiva Doble  para Comparar si tipo de entrada es Preferencial
				bienEscritoTipoEntrada=1            	// Se coloca la Variable en 1 pues el Tipo de localidad  Preferencial  es valida
				valorBoleto=boletoPreferencial      	// El valor del boleto es el valor de la entrada Preferencial  
				nombreEntrada="Preferencial "       	//  Se Asignan  El nombre completo del la Localidad que es Preferencial 
			SiNo                                    	 // Sino se evalua nuevamente el tipo de localidad ahora es General 
				SI tipoEntrada="G"                  	// La sentencia selectiva simple  para Comparar si tipo de entrada es  General 
					bienEscritoTipoEntrada=1        	// Se coloca la Variable en 1 pues el Tipo de localidad  General es valida
					valorBoleto=boletoGeneral      		 // El valor del boleto es el valor de la entrada General 
					nombreEntrada="General"        	 	// Se Asignan el nombre completo del la Localidad que es General  
				FinSi
			FinSi
		FinSi
		 SI miembroClub = "S"                      		// La sentencia selectiva Doble para   validar si es Si la respuesta y es socio del club
			 bienEscritoMiembroClub=1              		// Se coloca la Variable en 1 pues la entrada es valida
		 SiNo
		 	SI miembroClub = "N"                  		// La sentencia selectiva Simple para   validar si es No la respuesta y n es socio del club
		 		bienEscritoMiembroClub=1 	       		// Se coloca la Variable en 1 pues la entrada es valida
		 	FinSi
		 FinSi
	FinSi
	SI bienEscritoNumero = 1                     		// La sentencia selectiva Simple para verificar si los valores del numero de entradas a comprar son validos  
		SI bienEscritoTipoEntrada=1              		// La sentencia selectiva Simple para verificar si los valores de tipo de localidad esten bien escrito
			SI bienEscritoMiembroClub=1          		// La sentencia selectiva Simple para verificar si los valores de Miembro del club esten bien escrito 	
				procesarDatos=1                  		// Si se cumplen estas tres sentencias bienEscritoNumero = 1,bienEscritoTipoEntrada=1 y bienEscritoMiembroClub=1 
			FinSi                                		// entonces podemos trabajar en los procesos ya que no existe error en los datos de entrada
		FinSi	
	FinSi
	SI procesarDatos=1                             		// si todas las entradsa son validas podemos trabajar en los procesos y calculos
		montoApagar=valorBoleto*cantidadcomprar    		// Se calcula y almacena el valor del montoApagar 
		descuentoGeneral=0                         		// Inicializamos la variable con el valor = 0 para comenzar los calculos de los descuentos de los NO  socios
		descuentoMiembro=0.06                      		// Inicializamos la variable con el valor = 0.06 para comenzar los calculos de los descuentos de los socios
		SI montoApagar <= 60000                    		// La sentencia selectiva Doble  para determinar el primer intervalo    
			descuentoGeneral=0.02                 		 // se Asigna el valor que corresponde a la variable descuentoGeneral
		SiNo
			SI   montoApagar  <= 100000             		// La sentencia selectiva Doble  para determinar el Segundo  intervalo 
				   descuentoGeneral=0.05           		// se Asigna el valor que corresponde a la variable descuentoGeneral
			SiNo
				 SI 100000 < montoApagar           		// La sentencia selectiva simple  para determinar el Tercer  intervalo
					descuentoGeneral=0.07          		// se Asigna el valor que corresponde a la variable descuentoGeneral
				FinSi
			FinSi
		FinSi
	FinSi
	descuentoApliacar = descuentoGeneral           		// se Asigna el valor que corresponde a la variable descuentoApliacar = descuentoGeneral    
	SI miembroClub = "S"                           		// La sentencia selectiva simple para saber si es Miembro del club
	  si descuentoGeneral <= descuentoMiembro     		 // La sentencia selectiva simple para saber cual descuento es mayor 
		descuentoApliacar = descuentoMiembro 
	  FinSi
  FinSi
    montoDescuento= montoApagar*descuentoApliacar  		// Se calcula el Valor del Monto Del Descuento =  montoApagar*descuentoApliacar
	montoFinal = montoApagar - montoDescuento      		// Se calcula el Valor del Monto Final a pagar  = montoApagar - montoDescuento
	// 4. Bloque de Salida 
	SI procesarDatos=1 									// Si NO existe  algun tipo error en los de datos de entrada se realizan la Impresion 
		Escribir ''
		Escribir ''
		Escribir '           Tipo De Localidad : ', nombreEntrada
		Escribir '       Precio Del Boleto Bss : ', valorBoleto  
		Escribir ' Cantidad Entradas Compradas : ', cantidadcomprar
		Escribir '  Sub Total de la Compra Bss : ', montoApagar
		Escribir '      Monto Descuento en Bss : ', montoDescuento,'  es el ', descuentoApliacar * 100 ,' % '    
		Escribir '  Monto Total A Pagar en Bss : ', montoFinal
			 
	SiNo            									// Si existen errores en algun tipo de datos de entrada es aqui donde se Imprimen los mensajes pertinentes
		Escribir ''
		Escribir ''
		Escribir ''
		SI bienEscritoNumero = 0
			Escribir  ' La Cantidad de Entradas a Comprar Solo Puede Ser ,'
			Escribir  '          MAYOR A CERO (0)' 
		SiNo
			SI bienEscritoTipoEntrada=0
		 		Escribir  ' El Tipo De Localidad Solo Puede Ser ,'
				Escribir  '      [V]ip  [P]referencial [G]eneral ' 	
			SiNo
				Escribir  ' El Tipo De Respuesta si es Miembro Solo Puede Ser ,'
				Escribir  '      [S]i o [N]o  '	
			FinSi				
		FinSi	
	FinSi
	Escribir ''
	Escribir ''
	Escribir '            Pulso Una Tecla Para Continuar  ' 
	Escribir '   ------------------------------------------------- '
	Esperar tecla                                   // pulsar tecla para continuar
	BorrarPantalla                                  // Barro la Panatalla antes de  Terminar el Programa 
FinAlgoritmo   // 25092019 - 08:35
  
