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


Proceso funcion_calculo_area
	Definir opcion_calcular, rta Como Real; 	
	
	Escribir "Ménu calculo áreas";
	Escribir "Por favor seleccionar la opción que desea calcular:";
	Escribir "1.Rectángulo, 2.Triángulo, 3.Trapecio.";
	Leer opcion_calcular;
	
	Limpiar Pantalla;
	
	rta <- calculoArea(opcion_calcular);
FinProceso

SubProceso rta <- calculoArea(opcion_calcular)
	Definir base, altura, rta, base_mayor Como Real;
	
	Si opcion_calcular = 1 Entonces
		Escribir "Calcular área rectangulo";
		Escribir "";
		base <- capturaNumeros("base");
		altura <- capturaNumeros("altura");
		rta <-areaRectangulo(base, altura);
	SiNo
		Si opcion_calcular = 2 Entonces
			Escribir "Calcular área triángulo";
			Escribir "";
			base <- capturaNumeros("base");
			altura <- capturaNumeros("altura");
			rta <- areaTriangulo(base, altura);
		SiNo
			Si opcion_calcular = 3 Entonces
				Escribir "Calcular área trapecio";
				Escribir "";
				base <- capturaNumeros("base menor");
				altura <- capturaNumeros("altura");
				Escribir "Digite la base mayor";
				Leer base_mayor;
				rta <-areaTrapecio(base_mayor, base, altura);
			SiNo
				Escribir "Opción incorrecta!!";
			FinSi
		FinSi
	FinSi
FinSubProceso

SubProceso area <- areaRectangulo(base Por Referencia, altura Por Referencia)
	Definir area Como Real;
	area <- base * altura;
	Escribir "El área del rectangulo es: ", area, " mts2";
FinSubProceso

SubProceso area <- areaTriangulo(base Por Referencia, altura Por Referencia)
	Definir area Como Real;
	area <- base * altura / 2;
	Escribir "El área del rectangulo es: ", area, " mts2";
FinSubProceso

SubProceso area <- areaTrapecio(base_mayor, base, altura)
	Definir area Como Real;
	area <- ((base_mayor + base) / 2) * altura;
	Escribir "El área del rectangulo es: ", area, " mts2";
FinSubProceso

SubProceso rta <- capturaNumeros(vr)
	Definir rta Como Real;
	Escribir "Digite la ", vr;
	Leer rta;
FinSubProceso

