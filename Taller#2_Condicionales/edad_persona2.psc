// Realizar un programa en el cual se solicite la edad de una persona. 
// Si la persona es menor a 18 años, deberá mostrar en pantalla: Usted aún es un niño(a).

Proceso edad_persona2
	
	Definir edad Como Entero;
	
	Escribir "Por favor, digite edad:";
	Leer edad;
	
	Limpiar Pantalla;
	
	Si edad >= 18 Entonces;
		Escribir "Eres una persona grande";
	SiNo
		Si edad < 18 y edad >= 0  Entonces;
			Escribir "Usted aún es un niño(a)";
		SiNo
			Si edad < 0 Entonces;
				Escribir "Solo digitar número y que sean positivos";
			FinSi		
		FinSi
	FinSi	
	
FinProceso
