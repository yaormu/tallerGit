// Crear un arreglo de n�meros enteros de 20 posiciones, 
// el cual, debe ser llenado con n�meros aleatorios entre 1 y 100; 
// despu�s de haber llenado dicho arreglo, 
// se debe volver a recorrer utilizando un ciclo diferente al que se us� para llenarse 
// e imprimir los n�meros pares e impares. Ejemplo
// N�meros pares: 2, 4, 6, 8, 10
// N�meros impares: 1, 3, 5, 7, 9
Proceso Ejercicio2
	Definir encontrarPar, encontrarImpar, revuelto Como Caracter;
	Definir arreglo Como Entero;
	Dimension arreglo[21];
	
	revuelto <- aleatorios(arreglo);
	
	encontrarPar <- pares(arreglo);
		
	Escribir "";
	
	encontrarImpar <- impares(arreglo);
	
	Escribir "";
FinProceso

SubProceso rta <- aleatorios (arreglo Por Referencia)
	Definir rta Como Caracter;
	Definir i Como Entero;
	i <- 1;
	Mientras i<=20 Hacer
		arreglo[i] <- azar(100);
		i <- i+1;
	FinMientras
FinSubProceso

SubProceso rta <- pares(arreglo Por Referencia)
	Definir rta Como Caracter;
	Definir i Como Entero;
	Escribir "N�meros pares: " Sin Saltar;
	
	Para i<-1 Hasta 20 Hacer
		Si arreglo[i] MOD 2 == 0 Entonces
			Escribir arreglo[i], ", ", Sin Saltar;
		FinSi
	FinPara
FinSubProceso

SubProceso rta <- impares(arreglo Por Referencia)
	Definir rta Como Caracter;
	Definir i Como Entero;
	Escribir "N�meros impares: " Sin Saltar;
	
	Para i<-1 Hasta 20 Hacer
		Si arreglo[i] MOD 2 == 1 Entonces
			Escribir arreglo[i], ", " Sin Saltar;
		FinSi
	FinPara
FinSubProceso

