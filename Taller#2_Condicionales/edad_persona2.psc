// Realizar un programa en el cual se solicite la edad de una persona. 
// Si la persona es menor a 18 a�os, deber� mostrar en pantalla: Usted a�n es un ni�o(a).

Proceso edad_persona2
	
	Definir edad Como Entero;
	
	Escribir "Por favor, digite edad:";
	Leer edad;
	
	Limpiar Pantalla;
	
	Si edad >= 18 Entonces;
		Escribir "Eres una persona grande";
	SiNo
		Si edad < 18 y edad >= 0  Entonces;
			Escribir "Usted a�n es un ni�o(a)";
		SiNo
			Si edad < 0 Entonces;
				Escribir "Solo digitar n�mero y que sean positivos";
			FinSi		
		FinSi
	FinSi	
	
FinProceso
