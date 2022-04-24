// El parqueadero "El guardián" presta sus servicios de parqueadero nocturno para los usuarios del barrio
// y requiere una aplicación que permita 
// registrar los vehículos que se cuidan en estas instalaciones. 
// Se sugiere que el parqueadero tenga los atributos del vehículo como son, placa y marca, 
// y los datos del cliente como son nombre completo y número de teléfono. 
// Para cada vehículo se debe permitir la opción de 
// ingresar al parqueadero, retirar del parqueadero y consultar si un vehículo se encuentra en el parqueadero. 
// Recuerde que el sistema debe terminar cuando el usuario así lo indique. 
// Tenga en presente que el parqueadero solo puede almacenar máximo 5 vehículos.

Proceso parqueadero_vehiculos
		
	Definir menu Como Caracter;
			
	Escribir "Bienvenido al programa de parqueadero el guardián";
	Escribir "";
	Escribir "Digite alguna opción disponible:";
	Escribir "";
		
	menu <- menuParking();	
FinProceso

SubProceso retorno <- menuParking()
	Definir retorno Como Caracter;
	Definir opcion_menu, numero_telefonico, i, cantidad_carro, maxima_capacidad, contador Como Entero;
	Definir opcion_salir, marca, nombre_completo Como Caracter;
	Definir placa, placa_retiro, placa_busqueda Como Caracter;
	
	maxima_capacidad <- 5;
	placa <- "";
	opcion_salir <- "";
	
	Repetir
		Escribir "1. Ingreso vehiculo al parqueadero";
		Escribir "2. Retiro vehiculo del parqueadero";
		Escribir "3. Consultar vehiculos en el parqueadero";
		
		Leer opcion_menu;		
		
		Limpiar Pantalla;
		
		Segun opcion_menu Hacer
			1:
				Escribir "Cantidad de carros a registrar";
				Leer cantidad_carro;
				
				Limpiar Pantalla;
				
				Si cantidad_carro > maxima_capacidad Entonces
					Escribir "La capacidad maxima es: ", maxima_capacidad, "!!!";
					Escribir "";
				SiNo
					Si cantidad_carro <= maxima_capacidad Entonces
						
						contador <- 0;
						
						// Podriamos almacenar varios carros dependiendo con SEGUN
						// Posteriormente comparar la información
						// Por ejemplo si elige 1 pedir una sola vez la informacion
						// Si es 2 carros pedir nuevamente los datos 2 veces, pero debemos crear  más variables para almacenar estos datos		
						// En el ejercicio de la escuela automovilistica lo realice así						
						
						Para i <- 1 Hasta cantidad_carro Con Paso 1 Hacer
							
							Escribir "Menú registro vehículo";
							Escribir "";
							Escribir "Por favor ingrese los siguientes datos:";
							Escribir "Carro #: ", i;
							Escribir "";
							
							Escribir "- Registrar placa vehiculo:";
							Leer placa;
							Escribir "- Registrar marca vehiculo:";
							Leer marca;
							Escribir "- Registrar nombre completo cliente";
							Leer nombre_completo;
							Escribir "- Registrar número telefonico cliente";
							Leer numero_telefonico;
							
							Limpiar Pantalla;
							
							contador <- contador + 1;
							
							Escribir "Registros: ", contador;
							Escribir "Disponibilidad parqueaderos: ", maxima_capacidad - contador;
							Escribir "";
							
						FinPara
					FinSi
				FinSi
				
			2:
				Escribir "Menú retiro vehiculo del parqueadero";
				Escribir "";
				Escribir "Por favor registrar placa vehiculo:";
				Leer placa_retiro;
				
				Limpiar Pantalla;
				
				Si placa_retiro = placa Entonces
					Escribir "Retiro del Vehiculo:";
					Escribir "";
					Escribir "- Placa: ", placa;
					Escribir "- Marca: ", marca; 
					Escribir "";
					placa <- "";
				SiNo
					Escribir "Ningun vehiculo registrado con dicho número de placa";
					Escribir "";
				FinSi
				
			3:
				Escribir "Menú consultar vehiculos en el parqueadero";
				Escribir "";
				Escribir "Por favor ingrese placa para iniciar busqueda...?";
				Leer placa_busqueda;
				
				Limpiar Pantalla;
				
				Si placa_busqueda = placa Entonces
					Escribir "Vehiculo encontrado:";
					Escribir "";
					Escribir "- Placa: ", placa; 
					Escribir "- Marca: ", marca;
					Escribir "- Propietario: ", nombre_completo;
					Escribir "";
				SiNo
					Escribir "Ningun vehiculo registrado con dicho número de placa";
					Escribir "";
				FinSi
			De Otro Modo:
				Escribir "Elegio una opción incorrecta :(";
				Escribir "";
		FinSegun
		
		Escribir "Presiona Enter para continuar...";
		Escribir "Digita S para salir totalmente del programa";
		Leer opcion_salir;
		
		Si opcion_salir = "s" | opcion_salir = "S" Entonces
			opcion_menu <- 4;		
		FinSi
		
		Limpiar Pantalla;
		
	Hasta Que opcion_menu > 0 & opcion_menu == 4;
FinSubProceso