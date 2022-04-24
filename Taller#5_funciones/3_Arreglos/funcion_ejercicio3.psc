// Imprimir los números primos del 1 al 1000, el resultado debe ser buscado de forma matemática.

Proceso funcion_ejercicio3
	Definir arreglo Como Entero;
	definir encontrarPrimos, ingresaDatos Como Caracter;
	Dimension arreglo[1001];
	
	ingresaDatos <- ingresarNumeros(arreglo);
	encontrarPrimos <- numerosPrimos(arreglo);
FinProceso

SubProceso retorno <- ingresarNumeros (arreglo)
	Definir retorno Como Caracter;
	Definir i, num Como Entero;
	
	num <- 0;
	
	Para i<-0 Hasta 1000 Hacer
		arreglo[i] <- num;
		num <- num+1;
	FinPara
FinSubProceso

SubProceso retorno <- numerosPrimos(arreglo)
	Definir retorno Como Caracter;
	Definir i, j, div Como Entero;
	Para i<-0 Hasta 1000 Con Paso 1 Hacer
		
		div <- 0;
		
		Para j<-1 Hasta arreglo[i] Con Paso 1 Hacer
			Si arreglo[i] % j == 0 Entonces
				div <- div + 1;
			FinSi
		FinPara
		
		Si div == 2 Entonces
			Escribir arreglo[i];
		FinSi
	FinPara	
FinSubProceso