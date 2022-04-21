// Realizar un programa en el cual se solicite la edad de una persona. 
// Si la persona es mayor o igual a 18 años, deberá mostrar en pantalla: Usted es mayor de edad.

Proceso edad_persona
	
	Definir edad Como Entero;
	
	Escribir "Por favor, digite edad:";
	Leer edad;
	
	Limpiar Pantalla;
	
	Si edad >= 18 Entonces;
		Escribir "Eres mayor de edad";
	SiNo
		Si edad < 18 y edad >= 0  Entonces;
			Escribir "Eres menor de edad";
		SiNo
			Si edad < 0 Entonces;
				Escribir "Solo digitar número y que sean positivos";
			FinSi		
		FinSi
	FinSi	
	
	
FinProceso
