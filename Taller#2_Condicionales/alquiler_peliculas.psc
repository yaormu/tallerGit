// La video tienda que presta sus servicios de alquiler de pel�culas a los usuarios del barrio el Porvenir, 
// requiere de una aplicaci�n que permita registrar el alquiler de las pel�culas que adquieren sus usuarios. 
// Para cada usuario se debe permitir la opci�n de alquilar pel�cula, consultar pel�culas disponibles y recibir pel�cula en la video tienda 
// con la opci�n de realizar anotaciones sobre estas si se llegan a presentar da�os u otra novedad sobre la pel�cula.

Proceso alquiler_peliculas
	
	Definir recibir_pelicula, observacion_rta Como Caracter;
	Definir opcion, pelicula, observacion Como Entero;
		
	Escribir "Bienvenido a la tienda de alquiler del barrio el porvenir";
	Escribir "";
	Escribir "Eliga alguna opci�n:";
	Escribir "1.alquilar pel�cula";
	Escribir "2. consultar pel�culas disponibles";
	Escribir "3. recibir pel�cula en la video tienda";
	Leer opcion;
	
	Limpiar Pantalla;
	
	Segun opcion hacer
		1: 
			Escribir "Cual pelicula de las opciones desea alquilar:";
			Escribir "";
			Escribir "1. Avengers";
			Escribir "2. Liga de la Justicia";
			Escribir "3. X-Men";
			Escribir "4. Hombres de Negro";
			Leer pelicula;
			
			Limpiar Pantalla;
			
			Segun pelicula Hacer
				1: 
					Escribir "Gracias por preferirnos, seleccionaste la pelicula:";
					Escribir "Avengers";
				2: 
					Escribir "Gracias por preferirnos, seleccionaste la pelicula:";
					Escribir "Liga de la Justicia";
				3: 
					Escribir "Gracias por preferirnos, seleccionaste la pelicula:";
					Escribir "X-Men";
				4: 
					Escribir "Gracias por preferirnos, seleccionaste la pelicula:";
					Escribir "Hombres de Negro";
			FinSegun
		2:
			Escribir "Las peliculas disponibles en este momento son:";
			Escribir "";
			Escribir "1. Avengers";
			Escribir "2. Liga de la Justicia";
			Escribir "3. X-Men";
			Escribir "4. Hombres de Negro";
		3:
			Escribir "Men� recibir pel�cula en la video tienda";
			Escribir "";
			Escribir "Opcion 1 - Realizar anotaciones/novedades de la pelicula recibida";
			Escribir "Opcion 2 - No Realizar ninguna anotacion � novedad";
			Leer observacion;
			
			Limpiar Pantalla;
			
			Si observacion = 1 Entonces
				Escribir "Escribre la observaci�n encontradas: ";
				Leer observacion_rta;
				Limpiar Pantalla;
				Escribir "Observaci�n registrada; ", observacion_rta;
			SiNo
				Si observacion = 2 Entonces
					Escribir "NO hubo ninguna novedad!! ;)";
				SiNo
					Si (observacion <> 1 o observacion <> 2) Entonces
						Escribir "Opci�n no existe, elige alguna de las 2 habilitadas";
					FinSi	
				FinSi			
			FinSi
		De Otro Modo:
			Escribir "Opci�n incorrecta o no existe";
	FinSegun;
	
	
	
	
FinProceso
