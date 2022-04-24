// El pastelero Don Carlos es el mejor pastelero de la ciudad y requiere una aplicación que le permita 
// registrar los pedidos de los clientes en cuanto a las tortas que realiza. 
// Cada torta tiene unas características propias como sabor, cantidad (porciones) y decoraciones). 
// Se requiere que la aplicación permita registrar los pedidos, las tortas disponibles y 
// las ventas que se registren diariamente.

Proceso pastelero
	
	Definir cliente Como Caracter;
	Definir opcion_torta Como Entero;
	Definir opcion_sabor Como Entero;
	Definir opcion_decoracion Como Entero;
	Definir cantidad_porciones Como Entero;
	Definir productoVender Como Caracter;
	
	
	Escribir "Ménu Pasteleria Don Carlos";
	Escribir "Por favor registrar los datos del pedido:";
	Escribir "Por favor registrar datos cliente:";
	Leer cliente;
	
	Limpiar Pantalla;
	
	Escribir "Elija la opciones de torta disponibles:";
	Escribir "Opciones: 1.Pequeña, 2.Mediana, 3.Grande";
	Leer opcion_torta;
	Escribir "Opciones: 1.Chocolate, 2.Fresa, 3.Frutos rojos";
	Leer opcion_sabor;
	Escribir "Opciones: 1.Cumpleaños, 2.Graduación, 3.Matrimonio";
	Leer opcion_decoracion;
	Escribir "Elija la cantidad de que cantidad de porciones necesita de la torta:";
	Leer cantidad_porciones;
	
	Limpiar Pantalla;
	
	productoVender <- productoTorta(cliente, opcion_torta, opcion_sabor, opcion_decoracion, cantidad_porciones);	
FinProceso


SubProceso resultado <- productoTorta(cliente, opcion_torta, opcion_sabor, opcion_decoracion, cantidad_porciones)
	Definir resultado Como Caracter;
	Definir torta Como Caracter;
	Definir sabor Como Caracter;
	Definir decoracion Como Caracter;
	
	Definir valor_torta Como Entero;
	Definir valor_sabor Como Entero;
	Definir valor_decoracion Como Entero;
	
	Definir valor_porcion Como Entero;
	valor_porcion <- 1000;
	
	Definir valor_venta Como Entero;
	
	Si opcion_torta = 1 Entonces;
		torta <- "pequeña";
		valor_torta <- 15000;
	SiNo
		Si opcion_torta = 2 Entonces;
			torta <- "mediana";
			valor_torta <- 25000;
		SiNo
			Si opcion_torta = 3 Entonces;
				torta <- "grande";
				valor_torta <- 50000;
			FinSi		
		FinSi
	FinSi
	
	Si opcion_sabor = 1 Entonces;
		sabor <- "chocolate";
		valor_sabor <- 6000;
	SiNo
		Si opcion_sabor = 2 Entonces;
			sabor <- "fresa";
			valor_sabor <- 5000;
		SiNo
			Si opcion_sabor = 3 Entonces;
				sabor <- "frutos rojos";
				valor_sabor <- 8000;
			FinSi		
		FinSi
	FinSi
	
	Si opcion_decoracion = 1 Entonces;
		decoracion <- "cumpleaños";
		valor_decoracion <- 5000;
	SiNo
		Si opcion_decoracion = 2 Entonces;
			decoracion <- "graduacion";
			valor_decoracion <- 8000;
		SiNo
			Si opcion_decoracion = 3 Entonces;
				decoracion <- "matrimonio";
				valor_decoracion <- 15000;
			FinSi		
		FinSi
	FinSi
	
	valor_venta <- (valor_porcion * cantidad_porciones) + valor_decoracion + valor_sabor + valor_torta;
	
	Escribir "Registro de venta:";
	Escribir "Cliente: ", cliente;
	Escribir "Torta de tamaño: ", torta;
	Escribir "Torta de sabor: ", sabor;
	Escribir "Torta con una decoracion de: ", decoracion;
	Escribir  "Para una cantidad de porciones: ", cantidad_porciones;
	Escribir "El costo de la torta es $", valor_venta;
FinSubProceso