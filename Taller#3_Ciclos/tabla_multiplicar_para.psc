// Se requiere un programa que pueda crear la tabla de multiplicar del n�mero que el usuario indique por medio del ciclo�Para; 
// esta debe ser impresa del 1 al 10. 
// Ejemplo, si el usuario indica que desea crear la tabla del 5, entonces el resultado deber�a ser el siguiente:


Proceso tabla_multiplicar_para
	
	Definir i, j Como Entero;
	
	Para i<-5 Hasta 5 Con Paso 1 Hacer
		//Escribir "Tabla del: ", i;
		
		Para j<-1 Hasta 10 Con Paso 1 Hacer
			Escribir i, " X ", j, " = ", i*j;
		FinPara
	FinPara
	
FinProceso
