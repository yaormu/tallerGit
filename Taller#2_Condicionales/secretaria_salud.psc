// La Secretar�a de Salud Municipal requiere de una aplicaci�n que le permita calcular el IMC (�ndice de masa corporal) 
// y requiere los datos peso en kilogramos y estatura en metros 
// Para cada persona encuestada adicional a los datos suministrados, debe mostrar el resultado para cada uno y 
// establecer en qu� rango se encuentra (bajo peso, normal, sobrepeso y obeso).

// F�rmula: peso (kg) / [estatura (m)]2

Proceso secretaria_salud
	
	Definir peso Como Entero;
	Definir estatura Como Entero;
	Definir usuario Como Caracter;
	Definir IMC Como Real;
	
	Escribir "M�nu Consulta IMC (�ndice de masa corporal) ";
	Escribir "Por favor ingrese los siguientes datos:";
	Escribir "Nombres y apellidos usuario:";
	Leer usuario;
	Escribir "Por favor ingrese peso de usuario:";
	Leer peso;
	Escribir "Por favor ingrese estatura de usuario:";
	Leer estatura;
	
	IMC <- peso / ((estatura/100) * (estatura/100));
	
	Si IMC < 18.5 Entonces;
		Escribir "Usuario: ", usuario, " Nivel de peso: Bajo peso, IMC: ", IMC;
	SiNo
		Si IMC >= 18.5 Y IMC < 24.9 Entonces;
			Escribir "Usuario: ", usuario, " Nivel de peso: Normal, IMC: ", IMC;
		SiNo
			Si IMC >= 25 Y IMC <= 29.9 Entonces;
				Escribir "Usuario: ", usuario, " Nivel de peso: Sobrepeso, IMC: ", IMC;
				Si IMC > 30 Entonces;
					Escribir "Usuario: ", usuario, " Nivel de peso: Obesidad, IMC: ", IMC;
				FinSi
			FinSi		
		FinSi
	FinSi	
	
FinProceso
