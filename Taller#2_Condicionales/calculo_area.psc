// El profesor de geometría está explicando a sus estudiantes las fórmulas para calcular el área de diferentes figuras geométricas, 
// para ello requiere una aplicación que le facilite el ejercicio solicitándole los valores al estudiante. 
// La aplicación debe permitir que el estudiante seleccione si desea calcular el área de un rectángulo, triángulo o trapecio. 
// No olvide solicitar los datos necesarios para realizar cada cálculo y mostrar su respectivo resultado.

// El área del rectángulo es igual a base por altura - ÁREA = BASE X ALTURA
// A = b.h

// El área de un triángulo es igual a base por altura partido por 2.
// A = b.a / 2

// El área del trapecio es igual a la suma de las bases por la altura, y dividido por dos.
// A = ((B + b) 2 ) * h



Proceso calculo_area
	
	Definir opcion_calcular, area, altura, base, base_mayor Como Entero; 	
	
	Escribir "Ménu calculo áreas";
	Escribir "Por favor seleccionar la opción que desea calcular:";
	Escribir "1.Rectángulo, 2.Triángulo, 3.Trapecio.";
	Leer opcion_calcular;
	
	Limpiar Pantalla;
	
	Si opcion_calcular = 1 Entonces
		Escribir "Calcular área de rectángulo";
		Escribir "";
		Escribir "Digite la base";
		Leer base;
		Escribir "Digite la altura";
		leer altura;
		area <- base * altura;
		Escribir "El área del rectangulo es: ", area, " mts2";
	SiNo
		Si opcion_calcular = 2 Entonces
			Escribir "Calcular área triángulo";
			Escribir "";
			Escribir "Digite la base";
			Leer base;
			Escribir "Digite la altura";
			Leer altura;
			area <- (base * altura) / 2;
			Escribir "El área del triangulo es: ", area, " mts2";
		SiNo
			Si opcion_calcular = 3 Entonces
				Escribir "Calcular área trapecio";
				Escribir "";
				Escribir "Digite la base menor";
				Leer base;
				Escribir "Digite la base mayo";
				Leer base_mayor;
				Escribir "Digite la altura";
				Leer altura;
				area <- ((base_mayor + base) / 2) * altura;
				Escribir "El área del trapecio es: ", area, " mts2";
			SiNo
				Escribir "Opción incorrecta!!";
			FinSi
		FinSi
	FinSi
	
FinProceso
