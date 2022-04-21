// Crear un arreglo de números enteros de 20 posiciones, 
// el cual, debe ser llenado con números aleatorios entre 1 y 100; 
// después de haber llenado dicho arreglo, 
// se debe volver a recorrer utilizando un ciclo diferente al que se usó para llenarse 
// e imprimir los números pares e impares. Ejemplo
// Números pares: 2, 4, 6, 8, 10
// Números impares: 1, 3, 5, 7, 9
Proceso Ejercicio2
	Definir a,arreglo,i,num,j Como Entero;
	a <- 1;
	i <- 1;
	Dimension arreglo[21];
	
	num <- azar(10);
	
	Mientras i<=20 Hacer
		arreglo[i] <- azar(100);
		i <- i+1;
	FinMientras
	
	Escribir "Números pares: " Sin Saltar;
	
	Para i<-1 Hasta 20 Hacer
		Si arreglo[i] MOD 2 == 0 Entonces
			Escribir arreglo[i], ", ", Sin Saltar;
		FinSi
	FinPara
	
	Escribir "";
	
	Escribir "Números impares: " Sin Saltar;
	
	Para i<-1 Hasta 20 Hacer
		Si arreglo[i] MOD 2 == 1 Entonces
			Escribir arreglo[i], ", " Sin Saltar;
		FinSi
	FinPara
	
	Escribir "";
	
FinProceso
