// El profesor de geometr�a est� explicando a sus estudiantes las f�rmulas para calcular el �rea de diferentes figuras geom�tricas, 
// para ello requiere una aplicaci�n que le facilite el ejercicio solicit�ndole los valores al estudiante. 
// La aplicaci�n debe permitir que el estudiante seleccione si desea calcular el �rea de un rect�ngulo, tri�ngulo o trapecio. 
// No olvide solicitar los datos necesarios para realizar cada c�lculo y mostrar su respectivo resultado.

// El �rea del rect�ngulo es igual a base por altura - �REA = BASE X ALTURA
// A = b.h

// El �rea de un tri�ngulo es igual a base por altura partido por 2.
// A = b.a / 2

// El �rea del trapecio es igual a la suma de las bases por la altura, y dividido por dos.
// A = ((B + b) 2 ) * h



Proceso calculo_area
	
	Definir opcion_calcular, area, altura, base, base_mayor Como Entero; 	
	
	Escribir "M�nu calculo �reas";
	Escribir "Por favor seleccionar la opci�n que desea calcular:";
	Escribir "1.Rect�ngulo, 2.Tri�ngulo, 3.Trapecio.";
	Leer opcion_calcular;
	
	Limpiar Pantalla;
	
	Si opcion_calcular = 1 Entonces
		Escribir "Calcular �rea de rect�ngulo";
		Escribir "";
		Escribir "Digite la base";
		Leer base;
		Escribir "Digite la altura";
		leer altura;
		area <- base * altura;
		Escribir "El �rea del rectangulo es: ", area, " mts2";
	SiNo
		Si opcion_calcular = 2 Entonces
			Escribir "Calcular �rea tri�ngulo";
			Escribir "";
			Escribir "Digite la base";
			Leer base;
			Escribir "Digite la altura";
			Leer altura;
			area <- (base * altura) / 2;
			Escribir "El �rea del triangulo es: ", area, " mts2";
		SiNo
			Si opcion_calcular = 3 Entonces
				Escribir "Calcular �rea trapecio";
				Escribir "";
				Escribir "Digite la base menor";
				Leer base;
				Escribir "Digite la base mayo";
				Leer base_mayor;
				Escribir "Digite la altura";
				Leer altura;
				area <- ((base_mayor + base) / 2) * altura;
				Escribir "El �rea del trapecio es: ", area, " mts2";
			SiNo
				Escribir "Opci�n incorrecta!!";
			FinSi
		FinSi
	FinSi
	
FinProceso
