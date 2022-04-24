// Realizar un programa en el cual se solicite el nombre, apellidos y edad de la persona. 
// Si la persona es mayor o igual a 18 años, entonce se deberá imprimir en pantalla 
// [Nombre completo] usted es mayor de edad, por lo tanto puede entrar a la fiesta. 
// Si la edad de la persona es menor que 18 años, entonces, deberá imprimirse el siguiente mensaje: 
// [Nombre completo] usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.

Proceso funcion_fiesta
	Definir edad Como Entero;
	Definir rta, rtaEdad, nombre, apellido Como Caracter;
	
	Escribir "¿Por favor, digite su nombre?";
	Leer nombre;
	
	Escribir "¿Por favor, digite sus apellidos?";
	Leer apellido;
	
	Escribir "Por favor, digite su edad:";
	Leer edad;	
	
	rta <- usuario(nombre, apellido, edad);
		
	rtaEdad <- mayor_edad(edad);	
FinProceso

SubProceso rta <- usuario(nombre, apellido, edad)
	Definir rta Como Caracter;	
	Escribir "Nombre: ", nombre, ", Apellido: ", apellido, ", Edad: ", edad;
	Leer rta;
FinSubProceso

SubProceso respuesta <- mayor_edad(num)
	Definir respuesta Como Caracter;	
	Si num >= 18 Entonces;
		respuesta <- " usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
	SiNo
		Si num < 18 y num >= 0  Entonces;
			respuesta <- "usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
		SiNo
			Si num < 0 Entonces;
				respuesta <- "Solo digitar número y que sean positivos";
			FinSi		
		FinSi
	FinSi	
	Escribir  respuesta;
FinSubProceso
