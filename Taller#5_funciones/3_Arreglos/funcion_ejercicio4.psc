// Dada la siguiente matriz bidimensional, el cual debe de quemar en el código
//- 01 02 03 04 05
//- 06 07 08 09 10
//- 11 12 13 14 15
//- 16 17 18 19 20

//- Utilizando el conocimiento adquirido, a excepción de hacerlo de forma manual, 
//imprima la siguiente matriz bidimensional.
//- 01 02 03 04 05
//- 10 09 08 07 06
//- 11 12 13 14 15
//- 20 19 18 17 16

Proceso funcion_ejercicio4
	
	Definir datosNumeros, impresion Como Caracter;
	
	
	Dimension datosNumeros[5, 4];
	
	datosNumeros[0,0] <- "01";
	datosNumeros[1,0] <- "02";
	datosNumeros[2,0] <- "03";
	datosNumeros[3,0] <- "04";
	datosNumeros[4,0] <- "05";
	
	datosNumeros[0,1] <- "06";
	datosNumeros[1,1] <- "07";
	datosNumeros[2,1] <- "08";
	datosNumeros[3,1] <- "09";
	datosNumeros[4,1] <- "10";
	
	datosNumeros[0,2] <- "11";
	datosNumeros[1,2] <- "12";
	datosNumeros[2,2] <- "13";
	datosNumeros[3,2] <- "14";
	datosNumeros[4,2] <- "15";
	
	datosNumeros[0,3] <- "16";
	datosNumeros[1,3] <- "17";
	datosNumeros[2,3] <- "18";
	datosNumeros[3,3] <- "19";
	datosNumeros[4,3] <- "20";
	
	impresion <- matriz(datosNumeros);
FinProceso

SubProceso retorno <- matriz(datosNumeros)
	Definir retorno Como Caracter;
	Definir i, j, l Como Entero;
	
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		Para j <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir "  ", datosNumeros[j, i] Sin Saltar ;
		FinPara
		Escribir "";
	FinPara
	
	Escribir "";
	
	Para l <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "  ", datosNumeros[l, 0] Sin Saltar ;
	FinPara
	
	Escribir "";
	
	Para l <- 4 Hasta 0 Con Paso -1 Hacer
		Escribir "  ", datosNumeros[l, 1] Sin Saltar ;
	FinPara
	
	Escribir "";
	
	Para l <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "  ", datosNumeros[l, 2] Sin Saltar ;
	FinPara
	
	Escribir "";
	
	Para l <- 4 Hasta 0 Con Paso -1 Hacer
		Escribir "  ", datosNumeros[l, 3] Sin Saltar ;
	FinPara
	
	Escribir "";
FinSubProceso