// Se está creando una aplicación que va a estar conectada con un prototipo que permita 
// almacenar contactos telefónicos en el dispositivo. 
// Para ello cada contacto debe contener nombre completo, teléfono y organización. 
// Se requiere que la aplicación permita añadir 3 contactos verificando que el número no esté almacenado, 
// buscar contactos almacenados y eliminar contactos si el usuario lo requiere. 
// Recuerde que el sistema debe terminar cuando el usuario así lo indique.
Proceso funcion_contactos_telefonicos
	Definir inicio Como Caracter;
	inicio <- menuContacto();
FinProceso

SubProceso respuesta <- menuContacto()
	
	Definir respuesta Como Caracter;
	Definir menu,opcion_salir Como Caracter;
	opcion_salir <- '';
	Definir opcion Como Entero;
	Definir cantidad_contactos,maximo_contactos Como Entero;
	Definir numero_contacto1,numero_contacto2,numero_contacto3 Como Entero;
	Definir nombre_contacto,nombre_contacto1,nombre_contacto2,nombre_contacto3 Como Caracter;
	Definir organizacion1,organizacion2,organizacion3 Como Caracter;
	maximo_contactos <- 3;
	nombre_contacto <- '';
	nombre_contacto1 <- '';
	nombre_contacto2 <- '';
	nombre_contacto3 <- '';
	numero_contacto1 <- 0;
	numero_contacto2 <- 0;
	numero_contacto3 <- 0;
	
	
	Repetir
		Escribir 'Bienvenido a la agenda de contactos';
		Escribir '';
		Escribir 'Digite alguna de las siguientes opciones:';
		Escribir '1. Registro de contacto';
		Escribir '2. Buscar contacto';
		Escribir '3. Eliminar contacto';
		Leer opcion;
		Borrar Pantalla;
		
		Segun opcion  Hacer
			1:
				Escribir 'MENÚ REGISTRO CONTACTOS';
				Escribir '';
				Escribir 'Por favor indique la cantidad de contactos a registrar:';
				Leer cantidad_contactos;
				Borrar Pantalla;
				Si cantidad_contactos>maximo_contactos Entonces
					Escribir 'Solo pueden registra máximo ',maximo_contactos,' contactos!!';
					Escribir '';
				SiNo
					Si cantidad_contactos<=maximo_contactos Entonces
						Segun cantidad_contactos  Hacer
							1:
								Escribir 'Datos de contacto #1';
								Escribir '';
								Escribir 'Número de Celular:';
								Leer numero_contacto1;
								Si numero_contacto1=numero_contacto2 O numero_contacto1=numero_contacto3 Entonces
									Escribir 'El número ya se encuentra registrado';
								SiNo
									Escribir 'Nombre de Contacto';
									Leer nombre_contacto1;
									Escribir 'Organización de contacto';
									Leer organizacion1;
									Borrar Pantalla;
								FinSi
							2:
								Escribir 'Datos de contacto #1';
								Escribir '';
								Escribir 'Número de Celular:';
								Leer numero_contacto1;
								Si numero_contacto1=numero_contacto2 O numero_contacto1=numero_contacto3 Entonces
									Escribir 'El número ya se encuentra registrado';
								SiNo
									Escribir 'Nombre de Contacto';
									Leer nombre_contacto1;
									Escribir 'Organización de contacto';
									Leer organizacion1;
									Borrar Pantalla;
								FinSi
								Escribir 'Datos de contacto #2';
								Escribir '';
								Escribir 'Número de Celular:';
								Leer numero_contacto2;
								Si numero_contacto2=numero_contacto1 O numero_contacto2=numero_contacto3 Entonces
									Escribir 'El número ya se encuentra registrado';
									Escribir '';
								SiNo
									Escribir 'Nombre de Contacto';
									Leer nombre_contacto2;
									Escribir 'Organización de contacto';
									Leer organizacion2;
									Borrar Pantalla;
								FinSi
							3:
								Escribir 'Datos de contacto #1';
								Escribir '';
								Escribir 'Número de Celular:';
								Leer numero_contacto1;
								Si numero_contacto1=numero_contacto2 O numero_contacto1=numero_contacto3 Entonces
									Escribir 'El número ya se encuentra registrado';
								SiNo
									Escribir 'Nombre de Contacto';
									Leer nombre_contacto1;
									Escribir 'Organización de contacto';
									Leer organizacion1;
									Borrar Pantalla;
								FinSi
								Escribir 'Datos de contacto #2';
								Escribir '';
								Escribir 'Número de Celular:';
								Leer numero_contacto2;
								Si numero_contacto2=numero_contacto1 O numero_contacto2=numero_contacto3 Entonces
									Escribir 'El número ya se encuentra registrado';
									Escribir '';
								SiNo
									Escribir 'Nombre de Contacto';
									Leer nombre_contacto2;
									Escribir 'Organización de contacto';
									Leer organizacion2;
									Borrar Pantalla;
								FinSi
								Escribir 'Datos de contacto #3';
								Escribir '';
								Escribir 'Número de Celular:';
								Leer numero_contacto3;
								Si numero_contacto3=numero_contacto1 O numero_contacto3=numero_contacto2 Entonces
									Escribir 'El número ya se encuentra registrado';
								SiNo
									Escribir 'Nombre de Contacto';
									Leer nombre_contacto3;
									Escribir 'Organización de contacto';
									Leer organizacion3;
									Borrar Pantalla;
								FinSi
							De Otro Modo:
								Escribir 'Error';
						FinSegun
					FinSi
				FinSi
			2:
				Escribir 'MENÚ BUSCAR CONTACTO';
				Escribir '';
				Escribir 'Digite el nombre de contacto';
				Leer nombre_contacto;
				Borrar Pantalla;
				Si nombre_contacto=nombre_contacto1 Entonces
					Escribir 'Contacto encontrado: ';
					Escribir '';
					Escribir 'Nombre: ',nombre_contacto1;
					Escribir 'Celular: ',numero_contacto1;
					Escribir 'Organizacion: ',organizacion1;
					Escribir '';
				SiNo
					Si nombre_contacto=nombre_contacto2 Entonces
						Escribir 'Contacto encontrado: ';
						Escribir '';
						Escribir 'Nombre: ',nombre_contacto2;
						Escribir 'Celular: ',numero_contacto2;
						Escribir 'Organizacion: ',organizacion2;
						Escribir '';
					SiNo
						Si nombre_contacto=nombre_contacto3 Entonces
							Escribir 'Contacto encontrado: ';
							Escribir '';
							Escribir 'Nombre: ',nombre_contacto3;
							Escribir 'Celular: ',numero_contacto3;
							Escribir 'Organizacion: ',organizacion3;
							Escribir '';
						SiNo
							Escribir 'No se encontro registro!!';
							Escribir '';
						FinSi
					FinSi
				FinSi
			3:
				Escribir 'MENÚ ELIMINAR CONTACTO';
				Escribir '';
				Escribir 'Digite el nombre de contacto:';
				Leer nombre_contacto;
				Borrar Pantalla;
				Si nombre_contacto=nombre_contacto1 Entonces
					nombre_contacto1 <- '';
					numero_contacto1 <- 0;
					organizacion1 <- '';
					Escribir 'Contacto eliminado!';
					Escribir '';
				SiNo
					Si nombre_contacto=nombre_contacto2 Entonces
						nombre_contacto2 <- '';
						numero_contacto2 <- 0;
						organizacion2 <- '';
						Escribir 'Contacto eliminado!';
						Escribir '';
					SiNo
						Si nombre_contacto=nombre_contacto3 Entonces
							nombre_contacto3 <- '';
							numero_contacto3 <- 0;
							organizacion3 <- '';
							Escribir 'Contacto eliminado!';
							Escribir '';
						SiNo
							Escribir 'No se encontro registro!!';
							Escribir '';
						FinSi
					FinSi
				FinSi
			De Otro Modo:
				Escribir 'Opción incorrecta!!';
				Escribir 'Al digitar 4 saldras al continuar... :(';
				Escribir '';
	FinSegun
		
		Escribir 'Presiona Enter para continuar...';
		Escribir 'Digita S para salir totalmente del programa';
		Leer opcion_salir;
		Si opcion_salir='s' O opcion_salir='S' Entonces
			opcion <- 4;
		FinSi
		Borrar Pantalla;
	Hasta Que opcion>0 Y opcion=4
	
	
FinSubProceso
