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


Proceso funcion_calculo_area
	Definir opcion_calcular, rta Como Real; 	
	
	Escribir "M�nu calculo �reas";
	Escribir "Por favor seleccionar la opci�n que desea calcular:";
	Escribir "1.Rect�ngulo, 2.Tri�ngulo, 3.Trapecio.";
	Leer opcion_calcular;
	
	Limpiar Pantalla;
	
	rta <- calculoArea(opcion_calcular);
FinProceso

SubProceso rta <- calculoArea(opcion_calcular)
	Definir base, altura, rta, base_mayor Como Real;
	
	Si opcion_calcular = 1 Entonces
		Escribir "Calcular �rea rectangulo";
		Escribir "";
		base <- capturaNumeros("base");
		altura <- capturaNumeros("altura");
		rta <-areaRectangulo(base, altura);
	SiNo
		Si opcion_calcular = 2 Entonces
			Escribir "Calcular �rea tri�ngulo";
			Escribir "";
			base <- capturaNumeros("base");
			altura <- capturaNumeros("altura");
			rta <- areaTriangulo(base, altura);
		SiNo
			Si opcion_calcular = 3 Entonces
				Escribir "Calcular �rea trapecio";
				Escribir "";
				base <- capturaNumeros("base menor");
				altura <- capturaNumeros("altura");
				Escribir "Digite la base mayor";
				Leer base_mayor;
				rta <-areaTrapecio(base_mayor, base, altura);
			SiNo
				Escribir "Opci�n incorrecta!!";
			FinSi
		FinSi
	FinSi
FinSubProceso

SubProceso area <- areaRectangulo(base Por Referencia, altura Por Referencia)
	Definir area Como Real;
	area <- base * altura;
	Escribir "El �rea del rectangulo es: ", area, " mts2";
FinSubProceso

SubProceso area <- areaTriangulo(base Por Referencia, altura Por Referencia)
	Definir area Como Real;
	area <- base * altura / 2;
	Escribir "El �rea del rectangulo es: ", area, " mts2";
FinSubProceso

SubProceso area <- areaTrapecio(base_mayor, base, altura)
	Definir area Como Real;
	area <- ((base_mayor + base) / 2) * altura;
	Escribir "El �rea del rectangulo es: ", area, " mts2";
FinSubProceso

SubProceso rta <- capturaNumeros(vr)
	Definir rta Como Real;
	Escribir "Digite la ", vr;
	Leer rta;
FinSubProceso

