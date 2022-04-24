// La Droguería Mi Salud presta sus servicios en la localidad de Suba y requiere una aplicación para poder facturar los productos 
// que vende a sus clientes y para ello, los productos tienen unas características que deben indicársele al cliente para que pueda 
// escoger el producto a comprar. 
// Para cada cliente, se tienen las opciones de 
// compra de producto, consulta de precios por producto y devoluciones en caso de que se presenten.

Proceso drogueria
	Definir opcion Como Entero;	
	Definir rta Como Caracter;
	
	Escribir "Bienvenido al ménu de Droguería Mi Salud";
	Escribir "Opcion 1. Compra de Producto";
	Escribir "Opcion 2. Consulta de Producto";
	Escribir "Opcion 3. Devolución de Producto";
	Leer opcion;
	Limpiar Pantalla;
	
	rta <- opcionesMenu(opcion);
FinProceso


SubProceso retorno <- opcionesMenu(opcion Por Referencia)
	Definir retorno Como Caracter;
	Definir opcion_producto Como Entero;
	Definir cantidad Como Entero;
	Definir costo_compra Como Entero;
	
	Definir producto1 Como Caracter;
	Definir producto2 Como Caracter;
	Definir producto3 Como Caracter;
	
	producto1 <- "Jarabe";
	producto2 <- "Alcohol";
	producto3 <- "Tapabocas";
	
	Definir valor1 Como Entero;
	Definir valor2 Como Entero;
	Definir valor3 Como Entero;
	
	valor1 <- 10000;
	valor2 <- 5000;
	valor3 <- 2000;
	
	Si opcion = 1 Entonces;
		Escribir "Sr(a) bienvenido al menú de compras, donde se realizara su pago";
		Escribir "Seleccione el producto a comprar: 1.Jarabe, 2.Tapabocas, 3.Alcohol";
		Leer opcion_producto;
		Si opcion_producto = 1 Entonces;
			Escribir "Indique la cantidad a comprar:";
			Leer cantidad;
			costo_compra <- cantidad * valor1;
			Limpiar Pantalla;
			Escribir "El total a pagar por ", cantidad, " ", producto1, "(s) es de: $", costo_compra;
		SiNo
			Si opcion_producto = 2 Entonces;
				Escribir "Indique la cantidad a comprar:";
				Leer cantidad;
				costo_compra <- cantidad * valor2;
				Limpiar Pantalla;
				Escribir "El total a pagar por ", cantidad, " ", producto2, "(s) es de: $", costo_compra;
			SiNo
				Si opcion_producto = 3 Entonces;
					Escribir "Indique la cantidad a comprar:";
					Leer cantidad;
					costo_compra <- cantidad * valor3;
					Limpiar Pantalla;
					Escribir "El total a pagar por ", cantidad, " ", producto3, "(s) es de: $", costo_compra;
				FinSi
			FinSi
		FinSi
	SiNo
		Si opcion = 2 Entonces;
			Escribir "Sr(a) bienvenido al menú de consulta de su producto, donde conocera las caracteristicas";
			Escribir "Seleccione el producto a consultar: 1.Jarabe, 2.Alcohol, 3.Tapabocas";
			Leer opcion_producto;
			Si opcion_producto = 1 Entonces;
				cantidad <- 1;
				Limpiar Pantalla;
				Escribir "El precio del ", producto1, " es de: $", valor1;
			SiNo
				Si opcion_producto = 2 Entonces;
					cantidad <- 1;
					Limpiar Pantalla;
					Escribir "El precio del ", producto2, " es de: $", valor2;
				SiNo
					Si opcion_producto = 3 Entonces;
						cantidad <- 1;
						Limpiar Pantalla;
						Escribir "El precio del ", producto3, " es de: $", valor3;
					FinSi
				FinSi
			FinSi
		SiNo
			Si opcion = 3 Entonces;
				Escribir "Sr(a) bienvenido al menú de devolución de productos";
				Escribir "Seleccione el producto a devolver: 1.Jarabe, 2.Tapabocas, 3.Alcohol";
				Leer opcion_producto;
				Si opcion_producto = 1 Entonces;
					Escribir "Indique la cantidad a devolver:";
					Leer cantidad;
					costo_compra <- cantidad * valor1;
					Limpiar Pantalla;
					Escribir "Devolucion de ", cantidad, " ", producto1, " por valor de: $", costo_compra;
				SiNo
					Si opcion_producto = 2 Entonces;
						Escribir "Indique la cantidad a devolver:";
						Leer cantidad;
						costo_compra <- cantidad * valor2;
						Limpiar Pantalla;
						Escribir "Devolucion de ", cantidad, " ", producto2, " por valor de: $", costo_compra;
					SiNo
						Si opcion_producto = 3 Entonces;
							Escribir "Indique la cantidad a devolver:";
							Leer cantidad;
							costo_compra <- cantidad * valor3;
							Limpiar Pantalla;
							Escribir "Devolucion de ", cantidad, " ", producto3, " por valor de: $", costo_compra;
						FinSi
					FinSi
				FinSi
			FinSi		
		FinSi
	FinSi			
FinSubProceso
