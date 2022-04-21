Proceso Ejercicio5 
	
	Definir fila, columna, arreglo, i, j Como Entero; 
	Definir arregloTabla Como Entero; 
	
	Dimension arreglo[10, 10]; 
	
	
	Escribir "   0   1   2   3   4   5   6   7   8   9";
	
	// Prueba validar resultados de la multiplicacion de datos ingresados 
	Para fila <- 1 Hasta 10 Con Paso 1 Hacer 
		Escribir  fila-1, " " Sin Saltar; 
		Para columna <- 1 Hasta 10 Con Paso 1 Hacer 
			
			Escribir columna,  "x", fila , " " Sin Saltar; 
		FinPara 
		Escribir ""; 
	FinPara 
	
	Escribir ""; 
	
	i<-1; 
	j<-1; 
	// Ingresar datos al arreglo 
	Para fila <- 0 Hasta 9 Con Paso 1 Hacer 
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer 
			arreglo[fila, columna] <- i * j; 
			i <- i+1; 
		FinPara 
		i<-1; 
		j <- j+1; 
	FinPara 
	
	
	Escribir "Ingrese la fila a consultar: "; 
	Leer fila; 
	
	Escribir "Ingrese la columna a consultar: "; 
	Leer columna; 
	
	//Limpiar Pantalla; 
	
	Escribir "El resultado es: ", arreglo[fila, columna]; 
	
FinProceso