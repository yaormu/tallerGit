// Utilizando el ciclo que usted desee, crear un menú de ejecución infinita hasta que el usuario desee terminar dicho ciclo.

// Menú de usuario
// 1. Captura nombre
// 2. Saludar persona
// 3. Salir del sistema

Proceso menu_infinito_ciclo
	
	Definir opcion Como Entero;
	Definir opcion_repetir, nombre Como Caracter;
	
	nombre <- "NN";
	
	Repetir
		
		Escribir "Menú de usuario";
		Escribir "1. Captura nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir del sistema";
		Leer opcion;
		
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Escribir "Opción: Captura nombre";
				Escribir "";
				Escribir "Ingresa un nombre:";
				Leer nombre;
			2:
				Escribir "Opción: Saludar Persona";
				Escribir "";
				Escribir "Hola ", nombre, " bienvenido!!";
			3:
				Escribir "Seguro que desas salir";
			De Otro Modo:
				Escribir "Opción invalida";
		FinSegun
		
		Escribir "Continuar Enter... Para salir del programa digita S";
		
		Leer opcion_repetir;
		
		Limpiar Pantalla;
		
		
	Hasta Que opcion_repetir == "S" O opcion_repetir == "s"
	
FinProceso
