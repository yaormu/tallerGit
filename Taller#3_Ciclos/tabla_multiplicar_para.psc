// Se requiere un programa que pueda crear la tabla de multiplicar del número que el usuario indique por medio del ciclo Para; 
// esta debe ser impresa del 1 al 10. 
// Ejemplo, si el usuario indica que desea crear la tabla del 5, entonces el resultado debería ser el siguiente:


Proceso tabla_multiplicar_para
	
	Definir tabla, i, j Como Entero;
	
	Escribir "Digita la tabla de multiplicar que desea visualizar:";
	Leer tabla;
	
	Limpiar Pantalla;
	
	Para i<-tabla Hasta tabla Con Paso 1 Hacer
			
		Para j<-1 Hasta 10 Con Paso 1 Hacer
			Escribir i, " X ", j, " = ", i*j;
		FinPara
	FinPara
	
FinProceso
