// Realizar un programa en el cual se solicite la edad de una persona. 
// Si la persona es menor a 18 años, deberá mostrar en pantalla: Usted aún es un niño(a).

Proceso funcion_edad_persona2
	
	Definir edad Como Entero;
	Definir rta Como Caracter;
	
	Escribir "Por favor, digite edad:";
	Leer edad;
	
	Limpiar Pantalla;
	
	rta <- mayor_edad(edad);
	
	
FinProceso

SubProceso respuesta <- mayor_edad(num)
	Definir respuesta Como Caracter;	
	Si num >= 18 Entonces;
		respuesta <- "Eres una persona grande";
	SiNo
		Si num < 18 y num >= 0  Entonces;
			respuesta <- "Usted aún es un niño(a)";
		SiNo
			Si num < 0 Entonces;
				respuesta <- "Solo digitar números que sean positivos";
			FinSi		
		FinSi
	FinSi	
	Escribir  respuesta;
FinSubProceso
