Algoritmo PagoDeAlquiler
	// Bloque Declaracion de Variables
	Definir DiasAlquiler Como Entero        // Se define La variable  para Almacenar el Valor de entrada de los dias para Alquilar el vehiculo
	Definir MontoDiarioAlquiler Como Real   // Se define La variable  para Almacenar el Valor de entrada del monto diario del Alquiler del vehiculo
	Definir MontoTotaldelAlquiler Como Real // Se define La variable  para Almacenar el Valor a calcular del Monto Total del Alquiler del vehiculo
	Definir MontoReserva Como Real          // Se define La variable  para Almacenar el Valor a calcular del Monto de la reserva del vihiculo
	Definir MontoSaldoPendiente  Como Real  // Se define La variable  para Almacenar el Valor a calcular del Monto del saldo pendiente a pagar por el el Alquiler del vehiculo
	Definir MontoDiarioaDebitar  como real  // Se define La variable  para Almacenar el Valor a calcular del Monto diario a pagar por el Alquiler del vehiculo
 
	Borrar Pantalla                       // Para Limpia la pantalla    
	// Bloque entrada de Datos para las Variables a Utilizar en los calculos 
	Escribir ' Datos Para El Alquiler Del Vehiculo   '
	Escribir ' ---------------------------------------------------- '
	Escribir '      Ingresar Cantidad De Dias a Alquilar ? ' Sin Saltar  
	Leer DiasAlquiler                                                    // Se Ingresa la cantidad de dias para a calcular para el Monto del ALquiler del vehiculo
	Escribir ' Ingresar Costo Diario Del Alquiler En Bss.? ' Sin Saltar   
	Leer MontoDiarioAlquiler                                             // Se Ingresa la cantidad en Bss del monto diario del ALquiler del vehiculo
	Escribir '  Presiona Cualquier Tecla Para Ver los Resultados     ' 
	esperartecla
	// Bloque Salida con los Valores a calcular 
	Escribir ' ---------------------------------------------------- '
	Escribir ' Montos Por Concepto De Pago De: '
	Escribir '                    Total Alquiler Bss.: ',(DiasAlquiler*MontoDiarioAlquiler)       // Se Realizan los calculos para mostra por pantalla el Total monto Alquiler del Vehiculo
	Escribir '                     Reserva (35%) Bss.: ',(DiasAlquiler*MontoDiarioAlquiler)*0.35  // Se Realizan los calculos para mostra por pantalla el Total monto dela reserva 
	Escribir '               Saldo  Pendiente En Bss.: ',(DiasAlquiler*MontoDiarioAlquiler)*0.65  // Se Realizan los calculos para mostra por pantalla el Saldo Pendiente a Cancelar
	Escribir ' ---------------------------------------------------- '
	Escribir ' Montos A Cancelar Por Concepto De:'
	Escribir '                   Reserva (35%) En Bss.: ',(DiasAlquiler*MontoDiarioAlquiler)*0.35 // Se Realizan los calculos para mostra por pantalla el Total monto de la reserva 
	Escribir ' Cuota Tarjeta de Credito Diaria En Bss.: ',((DiasAlquiler*MontoDiarioAlquiler)*0.65)/DiasAlquiler,' Por ',DiasAlquiler,' Dias' // Se Realizan los calculos para mostra por pantalla el Monto diario a pagar por el Alquiler del vehiculo
	Escribir ' ----------------------------------- '
	
FinAlgoritmo
  
