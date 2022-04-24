// El taller de motos "El Maquinista" recibe motocicletas de alto cilindraje para realizar las respectivas 
// revisiones y requiere una aplicación que le permita registrar los servicios generados a sus clientes. 
// Para cada motocicleta se debe tener registro del ingreso al taller 
// y las observaciones por parte del cliente. 
// También debe existir registro de salida del taller con las novedades 
// y otra de arreglos hechos por el mecánico en caso de que se requiera inventariar 
// cambios repuestos en la motocicleta al entregarla.

Proceso taller_motos
	Definir opcion Como Entero;
	Definir rtaMenu Como Caracter;
		
	Escribir "Ménu Taller de Motos El Maquinista";
	Escribir "Elija la opción 1.Ingreso registro al taller, 2. Registro salida del taller.";
	Leer opcion;
	Limpiar Pantalla;
	
	rtaMenu <- MenuAuto(opcion);
FinProceso

SubProceso retorno <- MenuAuto(opcion Por Referencia)
	Definir retorno Como Caracter;
	Definir cliente Como Caracter;
	Definir moto Como Caracter;
	Definir observaciones_cliente Como Caracter;
	Definir novedades Como Caracter;
	Definir arreglos Como Caracter;
	
	Si opcion = 1 Entonces;
		Escribir "Ménu ingreso: Datos de registro de ingreso al taller:";
		Escribir "Nombres y apellidos del cliente:";
		Leer cliente;
		Escribir "Datos tipo motocicleta";
		Leer moto;
		Escribir "Observaciones por parte del cliente:";
		Leer observaciones_cliente;
		Limpiar Pantalla;
		Escribir "Datos registrados de ingreso:";
		Escribir "Cliente: ", cliente;
		Escribir "Caracteristicas de moto: ", moto;
		Escribir "Observaciones realizadas por el cliente: ", observaciones_cliente;
	SiNo
		Si opcion = 2 Entonces;
			Escribir "Ménu salida: Datos de salida del taller:";
			Escribir "Nombres y apellidos del cliente:";
			Leer cliente;
			Escribir "Datos tipo motocicleta";
			Leer moto;
			Escribir "Datos novedades encontradas en la moto:";
			Leer novedades;
			Escribir "Datos arreglos realizados a la moto";
			Leer arreglos;
			Limpiar Pantalla;
			Escribir "Datos de salida del taller:";
			Escribir "Cliente: ", cliente;
			Escribir "Caracteristicas de moto: ", moto;
			Escribir "Novedades encontradas: ", novedades;
			Escribir "Arreglos realizados: ", arreglos;
		FinSi
	FinSi	
FinSubProceso