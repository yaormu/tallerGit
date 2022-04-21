// Realizar un programa el cual solicite su nombre, apellidos, edad y estatura.
Proceso datos_persona
	
	Definir nombre Como Caracter;
	Definir  apellidos Como Caracter;
	Definir edad Como Entero;
	Definir estatura Como Real;
	
	Escribir "¿Por favor, digite su nombre?";
	Leer nombre;
	
	Escribir "¿Por favor, digite sus apellidos?";
	Leer apellidos;
	
	Escribir "¿Por favor, digite su edad?";
	Leer edad;
	
	Escribir "¿Por favor, digite su estatura?";
	Leer estatura;
	
	Limpiar Pantalla;
	
	Escribir "Los datos ingresados son:";
	Escribir "Nombres y apellidos: ", nombre, " ", apellidos;
	Escribir "Edad de: ", edad, " años";
	Escribir "Con una estatura de: ", estatura, " cm";
	
FinProceso