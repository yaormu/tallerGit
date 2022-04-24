Proceso funcion_ejercicio5 
	
	Definir retorno, retornotabla, resultado Como Caracter;
	Definir fila, columna, arreglo Como Entero; 
	
	Dimension arreglo[10, 10]; 
	
	
	retorno <- pintarTablas(1, 1, 10);
	
	retornotabla <- tablaUtilizar(arreglo);
	
	
	Escribir "Ingrese la fila a consultar: "; 
	Leer fila; 
	
	Escribir "Ingrese la columna a consultar: "; 
	Leer columna; 
	
	resultado <- encontrarResultado(arreglo, fila, columna);
	 
FinProceso

SubProceso retorno <- pintarTablas(fila, columna, limite)
	Definir i, j Como Entero;
	i <- fila;
	j <- columna;
	
	Escribir "   0   1   2   3   4   5   6   7   8   9";
	// Prueba validar resultados de la multiplicacion de datos ingresados 
	
	Para i<- 1 Hasta limite Con Paso 1 Hacer 
		Escribir  i-1, " " Sin Saltar; 
		Para j <- 1 Hasta limite Con Paso 1 Hacer 
			
			Escribir j,  "x", i , " " Sin Saltar; 
		FinPara 
		Escribir ""; 
	FinPara 
	Escribir "";
FinSubProceso

SubProceso retorno <- tablaUtilizar (arreglo)
	Definir i, j, fila, columna Como Entero;
	i<-1; 
	j<-1; 
	Para fila <- 0 Hasta 9 Con Paso 1 Hacer 
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer 
			arreglo[fila, columna] <- i * j; 
			i <- i+1; 
		FinPara 
		i<-1; 
		j <- j+1; 
	FinPara 
FinSubProceso

SubProceso retorno <- encontrarResultado (arreglo, fila, columna )
	Escribir "El resultado es: ", arreglo[fila, columna]; 
FinSubProceso