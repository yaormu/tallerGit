// Realizar un programa el cual solicite su nombre y apellidos, también debe capturar nombre y apellidos de su padre y madre. 
// Al finalizar debe imprimir en pantalla el siguiente mensaje "Yo [Nombre Completo], soy hijo de [Nombre de la Madre] y [Nombre del Padre].

Proceso mis_padres
	
	Definir nombre Como Caracter;
	Definir nombre_padre Como Caracter;
	Definir nombre_madre Como Caracter;
	
	Definir  apellidos Como Caracter;
	Definir  apellidos_padre Como Caracter;
	Definir  apellidos_madre Como Caracter;
	
	Escribir "Por favor, digite su nombre:";
	Leer nombre;
	
	Escribir "Por favor, digite sus apellidos:";
	Leer apellidos;
	
	Limpiar Pantalla;
	
	Escribir "Por favor, digite el nombre de su padre:";
	Leer nombre_padre;
	
	Escribir "Por favor, digite los apellidos de su padre:";
	Leer apellidos_padre;
	
	Limpiar Pantalla;
	
	Escribir "Por favor, digite el nombre de su madre:";
	Leer nombre_madre;
	
	Escribir "¿Por favor, digite los apellidos de su madre:";
	Leer apellidos_madre;
	
	
	Limpiar Pantalla;
	
	Escribir "Yo ", nombre, " ", apellidos, " soy hijo de ", nombre_madre, " ", apellidos_madre, " y ", nombre_padre, " ", apellidos_padre;
	
FinProceso
