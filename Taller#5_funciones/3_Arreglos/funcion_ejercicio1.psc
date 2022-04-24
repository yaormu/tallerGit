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
	Definir numerosArreglo Como Entero;
	Definir llena, muestra Como Caracter;
	Dimension  numerosArreglo[5];
	
	llena <- captura(numerosArreglo);
	muestra <- MostrarArreglo(numerosArreglo);
FinProceso

SubProceso rta <- captura(numerosArreglo Por Referencia)
	Definir rta Como Caracter;
	Definir i, num Como Entero;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Digite un número: ", i, " del arreglo";
		Leer num;
		numerosArreglo[i] <- num;
		Limpiar Pantalla;
	FinPara
FinSubProceso

SubProceso rta <- MostrarArreglo(arreglo Por Referencia)
	Definir rta Como Caracter;
	Definir i Como Entero;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[",i,"] = ", arreglo[i];
	FinPara
FinSubProceso
