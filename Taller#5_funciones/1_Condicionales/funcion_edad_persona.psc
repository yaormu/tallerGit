// Realizar un programa en el cual se solicite la edad de una persona. 
// Si la persona es mayor o igual a 18 años, deberá mostrar en pantalla: Usted es mayor de edad.

Proceso funcion_edad_persona
	
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
		respuesta <- " usted es mayor de edad";
	SiNo
		Si num < 18 y num >= 0  Entonces;
			respuesta <- "usted es menor de edad";
		SiNo
			Si num < 0 Entonces;
				respuesta <- "Solo digitar números que sean positivos";
			FinSi		
		FinSi
	FinSi	
	Escribir  respuesta;
FinSubProceso

