// Realizar la siguiente figura por medio del ciclo Repetir - Hasta Que
Proceso figura_repetir_hasta_que
	// Variables copa arbol
	Definir i,j,k,l,max Como Entero;
	Definir a,b,c,index, maximo Como Entero;
	
	// Variable para simbolo y lo definimos como un * 
	Definir simbolo Como Caracter;
	simbolo <- '*';
	
	// Inicializar variables de inicio y máximo 
	i <- 1;
	index <- 1;
	max <- 10;
	maximo <- 5;
	
	
	// Crear copa del arbol
	Repetir
		// Inicializacion variables a utilizar
		j <- 1;
		k <- 10;
		l <- 1;
		
		// Crea espacios iniciando desde 10 y diminuye al repetir ciclo
		Repetir
			Escribir ' ' Sin Saltar;
			k <- k-1;
		Hasta Que k<i
		
		Repetir
			// Imprimir desde la 2da interacción
			Si j==1 Entonces
				Escribir '' Sin Saltar;
			SiNo
				Escribir simbolo Sin Saltar;
			FinSi
			j <- j+1;
		Hasta Que j>i
		
		Repetir
			// Imprimir desde la 2da interacción
			Si l==1 Entonces
				Escribir '' Sin Saltar;
			SiNo
				Escribir simbolo Sin Saltar;
			FinSi
			l <- l+1;
		Hasta Que l>i
		
		// Al llegar a este punto da un salto
		Escribir '*';
		
		i <- i+1;
		
	Hasta Que i>=max
	
	
	// ---------------------  Base del arbol ---------------------------//
	// Crea espacios iniciando desde 10 y diminuye al repetir ciclo
	Repetir
		
		a <- 10;
		b <- 2;
		c <- 2;
		
		Repetir
			Si a == 1 Entonces
				Escribir "" Sin Saltar;
			SiNo
				Escribir " " Sin Saltar;
			FinSi
			a <- a-1;
		Hasta Que a<index
		
		Repetir
			Escribir simbolo Sin Saltar;
			b <- b+1;
		Hasta Que b>index
		
		Repetir
			Escribir simbolo Sin Saltar;
			c <- c+1;
		Hasta Que c>index
		
		// Al llegar a este punto da un salto
		Escribir simbolo;
		
		index <- index+1;
		
	Hasta Que index>=maximo
	
FinProceso
