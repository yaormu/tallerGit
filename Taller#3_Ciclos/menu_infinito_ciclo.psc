// Utilizando el ciclo que usted desee, crear un men� de ejecuci�n infinita hasta que el usuario desee terminar dicho ciclo.

// Men� de usuario
// 1. Captura nombre
// 2. Saludar persona
// 3. Salir del sistema

Proceso menu_infinito_ciclo
	
	Definir opcion Como Entero;
	Definir opcion_repetir, nombre Como Caracter;
	
	nombre <- "NN";
	
	Repetir
		
		Escribir "Men� de usuario";
		Escribir "1. Captura nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir del sistema";
		Leer opcion;
		
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Escribir "Opci�n: Captura nombre";
				Escribir "";
				Escribir "Ingresa un nombre:";
				Leer nombre;
			2:
				Escribir "Opci�n: Saludar Persona";
				Escribir "";
				Escribir "Hola ", nombre, " bienvenido!!";
			3:
				Escribir "Seguro que desas salir";
			De Otro Modo:
				Escribir "Opci�n invalida";
		FinSegun
		
		Escribir "Continuar Enter... Para salir del programa digita S";
		
		Leer opcion_repetir;
		
		Limpiar Pantalla;
		
		
	Hasta Que opcion_repetir == "S" O opcion_repetir == "s"
	
FinProceso
