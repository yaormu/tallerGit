// La escuela automovilística "El Maestro" requiere una aplicación que permita 
// registrar a sus clientes en los cursos de enseñanza automovilística y 
// establecer quienes lo han aprobado para continuar con el trámite de adquirir la licencia de conducción. 
// Para cada usuario se debe permitir registrar su ingreso al curso, 
// consultar usuarios que hayan presentado el curso y 
// resultados de la prueba del curso (si fueron aprobados o no). 
// Recuerde que el sistema debe terminar cuando el usuario así lo indique. 
// Tenga presente que la escuela tiene capacidad máxima de gestionar 8 usuarios en su totalidad.

Proceso escuela_automovilistica
	
	Definir cantidad_usuarios, maximo_usuarios, documento_usuario, opcion_menu, i, consulta_usuario Como Entero;
	Definir nombre_usuario, apellido_usuario, opcion_salir Como Caracter;
	
	maximo_usuarios <- 8;
	documento_usuario <- 0;
	consulta_usuario <- 0;
	opcion_salir <- "";
	nombre_usuario <- "";
	
	Escribir "Bienvenido al menú escuela automovilística El Maestro";
	Escribir "";
	Escribir "Por favor digite alguna de las opciones:";
	Escribir "";
	
	
	Repetir
		Escribir "1. Registro de usuario";
		Escribir "2. Consultar registro de usuario";
		Escribir "3. Consultar aprobación curso de usuario";
		Leer opcion_menu;
		
		Limpiar Pantalla;
		
		Segun opcion_menu Hacer
			1:
				Escribir "Cantidad de usuarios a registrar";
				Leer cantidad_usuarios;
				Limpiar Pantalla;
				
				Si cantidad_usuarios > maximo_usuarios Entonces
					Escribir "Solo puede realizar máximo ", maximo_usuarios, " registros";
				SiNo
					Si cantidad_usuarios > 0 & cantidad_usuarios <= maximo_usuarios Entonces
						
						Para i<-1 Hasta cantidad_usuarios Con Paso 1 Hacer
							Escribir "Menú registro usuario";
							Escribir "Usuario #", i;
							Escribir "- Por favor ingrese nombre usuario:";
							Leer nombre_usuario;
							Escribir "- Por favor ingrese apellido usuario:";
							Leer apellido_usuario;
							Escribir "- Por favor ingrese número de documento usuario:";
							Leer documento_usuario;
							Limpiar Pantalla;
							
						FinPara
					FinSi
				FinSi
				
				
			2:
				Escribir "Menú consulta registro usuario";
				Escribir "";
				Escribir "- Por favor ingrese número de identificación del usuario:";
				Leer consulta_usuario;
				Escribir "";
				
				Si consulta_usuario = documento_usuario & consulta_usuario > 0 Entonces
					Escribir "Nombre Usario: ", nombre_usuario;
					Escribir "Documento identificación: ", documento_usuario;
					Escribir "";
				SiNo
					Escribir "Usuario no registrado!!";
					Escribir "";
				FinSi
			3:
				Escribir "Menú consulta aprobación curso";
				Escribir "";
				Escribir "- Por favor ingrese número de identificación del usuario:";
				Leer consulta_usuario;
				
				Si consulta_usuario = documento_usuario & consulta_usuario < 100 Entonces
					Escribir "Nombre Usario: ", nombre_usuario;
					Escribir "Documento identificación: ", documento_usuario;
					Escribir "Aprobo el Curso";
				SiNo
					// Ponemos como ejemplo que si una cedula es mayor a 100 aparecera que NO aprueba
					Si consulta_usuario = documento_usuario & consulta_usuario > 100 Entonces
						Escribir "Nombre Usario: ", nombre_usuario;
						Escribir "Documento identificación: ", documento_usuario;
						Escribir "NO Aprobo el curso";
					SiNo
						Escribir "El usuario no esta registrado!!";	
					FinSi
				FinSi

			De Otro Modo:
				Escribir "Selecciono una respuesta incorrecta";
				Escribir "";
		FinSegun
		
		Escribir "Presiona Enter para continuar...";
		Escribir "Digita X para salir totalmente del programa";
		Leer opcion_salir;
		
		Si opcion_salir = "x" | opcion_salir = "X" Entonces
			opcion_menu <- 4;
		FinSi
		
		Limpiar Pantalla;
		
	Hasta Que opcion_menu > 0 & opcion_menu == 4;
	
FinProceso
