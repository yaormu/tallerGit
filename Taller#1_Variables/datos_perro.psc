// Realizar un programa el cual solicite el nombre de su mascota, edad de la mascota, el tipo de mascota y su nombre completo. 
// Al finalizar el sistema debe e imprimir en pantalla el siguiente mensaje: [Nombre de Mascota] es un(a) [Tipo de Mascota],
// el cual, tiene [Edad de la Mascota] años de edad y [Nombre Completo] es actualmente su dueño(a).
Proceso datos_perro
	
	Definir nombre_completo Como Caracter;
	Definir  nombre_mascota Como Caracter;
	Definir edad_mascota Como Entero;
	Definir  tipo_mascota Como Caracter;
	
	Escribir "Por favor, digite su nombre y apellidos completo:";
	Leer nombre_completo;
	
	Escribir "Por favor, digite nombre de mascota:";
	Leer nombre_mascota;
	
	Escribir "Por favor, digite edad de la mascota:";
	Leer edad_mascota;
	
	Escribir "¿Por favor, digite raza de la mascota:";
	Leer tipo_mascota;
	
	Limpiar Pantalla;
	
	Escribir nombre_mascota, " es un(a) ", tipo_mascota, ", el cual, tiene ", edad_mascota, " años de edad y ", nombre_completo, " es actualmente su dueño(a)";
	
FinProceso
