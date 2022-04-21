// 1. Crear un vector de tipo Entero con 5 posiciones, 
// llenarlo con información solicitada al usuario. 
// Después de recoger toda la información, 
// se requiere imprimir el índice de cada posición en el arreglo 
// con su valor de la siguiente manera:

// [0] = 55
// [1] = 99
// [2] = 11
// [3] = 56
// [4] = 69

Proceso Ejercicio1
	
	Definir numerosArreglo, i, num, a Como Entero;
	a <- 0;
	
	Dimension  numerosArreglo[5];
	
	Para i <- 0 Hasta 5-1 Con Paso 1 Hacer
		Escribir "Digite un número: ", i, " del arreglo";
		Leer num;
		numerosArreglo[i] <- num;
		Limpiar Pantalla;
	FinPara
	
	Para i <- 0 Hasta 5-1 Con Paso 1 Hacer
		Escribir "[",i,"] = ", numerosArreglo[i];
	FinPara
	
FinProceso
