// La Secretaría de Salud Municipal requiere de una aplicación que le permita calcular el IMC (Índice de masa corporal) 
// y requiere los datos peso en kilogramos y estatura en metros 
// Para cada persona encuestada adicional a los datos suministrados, debe mostrar el resultado para cada uno y 
// establecer en qué rango se encuentra (bajo peso, normal, sobrepeso y obeso).

// Fórmula: peso (kg) / [estatura (m)]2

Proceso secretaria_salud
	
	Definir IMC Como Real;
	Definir peso Como Entero;
	Definir estatura Como Entero;
	Definir usuario Como Caracter;
	Definir resultado_diagnostico Como Caracter;
	
	Escribir "Ménu Consulta IMC (Índice de masa corporal) ";
	Escribir "Por favor ingrese los siguientes datos:";
	Escribir "Nombres y apellidos usuario:";
	Leer usuario;
	Escribir "Por favor ingrese peso de usuario:";
	Leer peso;
	Escribir "Por favor ingrese estatura de usuario:";
	Leer estatura;
	Limpiar Pantalla;
	IMC <- calculo_IMC(peso, estatura);
	resultado_diagnostico <- resultado_IMC(IMC, usuario);
	
FinProceso

SubProceso retorno <- calculo_IMC(peso, estatura)
	Definir retorno Como Real;
	retorno <- peso / ((estatura/100) * (estatura/100));
FinSubProceso

SubProceso retorno <- resultado_IMC ( imc, usuario )
	Si imc < 18.5 Entonces;
		Escribir "Usuario: ", usuario, " Estado: Bajo peso, IMC: ", imc;
	SiNo
		Si imc >= 18.5 Y imc < 24.9 Entonces;
			Escribir "Usuario: ", usuario, " Estado: Normal, IMC: ", imc;
		SiNo
			Si imc >= 25 Y imc <= 29.9 Entonces;
				Escribir "Usuario: ", usuario, " Estado: Sobrepeso, IMC: ", imc;
				Si imc > 30 Entonces;
					Escribir "Usuario: ", usuario, " Estado: Obesidad, IMC: ", imc;
				FinSi
			FinSi		
		FinSi
	FinSi		
FinSubProceso