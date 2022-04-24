// El banco "Su banco fiel" es un banco que inicia sus actividades financieras y 
// necesita una aplicación para llevar las cuentas de sus usuarios; 
// por lo tanto, se sugiere que la cuenta tenga los atributos titular y cantidad. 
// Para cada cliente las cuentas permitirán realizar ingresos, retiros o consultas de valor. 
// En los ingresos no se pueden insertar valores negativos y 
// para los retiros el valor no puede ser mayor al valor que tiene en la cuenta

Proceso funcion_cuenta_bancaria_usuarios
	
	Definir rta, titular Como Caracter;
	Definir opcion_cuenta, cantidad Como Entero;	
	
	Escribir "Indique el nombre del titular";
	Leer titular;
	Escribir "Indique la cantidad de la cuenta";
	Leer cantidad;
	
	Limpiar Pantalla;
	
	Escribir "Bienvenido al Ménu de Su Banco Fiel";
	Escribir "Sr(a) ", titular;
	Escribir "Seleccione la operación que desea realizar";
	Escribir "1. Consigar dinero, 2. Retirar dinero, 3. Consultar cuenta";
	Leer opcion_cuenta;
	
	Limpiar Pantalla;
	
	rta <- menuBancario(opcion_cuenta, cantidad);
FinProceso

SubProceso retorno <- menuBancario(opcion_cuenta Por Referencia, cantidad)
	Definir retorno Como Caracter;
	
	cantidad <- cantidad;
	
	Definir valor_ingreso Como Entero;
	Definir valor_retiro Como Entero;
	
	Si opcion_cuenta = 1 Entonces;
		Escribir "Por favor ingrese el valor a consignar en su cuenta:";
		Leer valor_ingreso;
		Si valor_ingreso <= 0 Entonces
			Escribir "No puede ingresar valor negativos o en 0";
		FinSi
		cantidad <- cantidad + valor_ingreso;
		Escribir "Total ahorrado ahora es de: ", cantidad;
	SiNo
		Si opcion_cuenta = 2 Entonces;
			Escribir "Por favor ingrese el valor a retirar de su cuenta:";
			Leer valor_retiro;
			Si valor_retiro <= 0 Entonces
				Escribir "No puede ingresar valor negativos o en 0";
			FinSi
			Si valor_retiro > cantidad Entonces
				Escribir "No cuenta con el saldo disponible para realizar el retiro";
			FinSi
			cantidad <- cantidad - valor_retiro;
			Escribir "Su retiro fue de: $", valor_retiro;
			Escribir "Su nuevo saldo es de: $", cantidad;
		SiNo
			Si opcion_cuenta = 3 Entonces;
				Escribir "El saldo de su cuenta en este momento es de:";
				Escribir "$ ", cantidad;
			FinSi		
		FinSi
	FinSi
FinSubProceso