// Realizar la siguiente figura por medio del ciclo Mientras - Hacer

Proceso figura_mientras_hacer
	Definir i,j, k, max Como Entero;
	Definir simbolo Como Caracter;
	
	i <- 1;
	max <- 10;
	simbolo <- '*';
	
	Mientras i<=max Hacer
		
		j <- 1;
		k <- 10;
		
		Mientras k>=i Hacer
			Escribir " " Sin Saltar;
			k <- k-1;
		FinMientras
		
		Mientras j<=i Hacer
			Escribir simbolo Sin Saltar;
			j <- j+1;
		FinMientras
		
		Escribir "";
		i <- i+1;
		
	FinMientras
FinProceso
