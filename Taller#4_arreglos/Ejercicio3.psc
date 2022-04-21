Proceso sin_titulo
	Definir arreglo,i,j,num,contador, div Como Entero;
	
	num <- 0;
	contador <- 0;
	
	Dimension arreglo[1001];
	
	Para i<-0 Hasta 1000 Hacer
		arreglo[i] <- num;
		num <- num+1;
	FinPara
	
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
	
FinProceso
