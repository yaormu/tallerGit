// Realizar un programa el cual solicite el nombre de una ciudad capital y el pa�s. 
// Al finalizar debe imprimir en pantalla el siguiente mensaje "La ciudad [Nombre de la Ciudad], es la capital del pa�s [Nombre del Pa�s]

Proceso ciudad_pais
	
	Definir ciudad Como Caracter;
	Definir pais Como Caracter;
	
	Escribir "Por favor, digite la ciudad capital:";
	Leer ciudad;
	
	Escribir "Por favor, digite el pa�s:";
	Leer pais;
	
	Limpiar Pantalla;
	
	Escribir "La ciudad ", Ciudad, " es la capital del pa�s ", pais;
	
	
FinProceso
