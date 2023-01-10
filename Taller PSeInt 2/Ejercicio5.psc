//La Droguería Mi Salud presta sus servicios en la localidad de Suba
//y requiere una aplicación para poder facturar los productos que 
//vende a sus clientes y para ello, los productos tienen unas características
//que deben indicársele al cliente para que pueda escoger el producto a
//comprar. Para cada cliente, se tienen las opciones de compra de producto,
//consulta de precios por producto y devoluciones en caso de que se presenten.

Proceso Ejercicio5
	
	Definir nombreCliente Como Caracter;
	Definir a Como Entero;
	a=0;
	
	Definir productos Como Caracter;
	Dimension productos[5];
	productos[0]="Acetaminofen 500 mg";
	productos[1]="Ampicilina 500 mg";
	productos[2]="Condones peor es na";
	productos[3]="Sildenafil 50 mg";
	productos[4]="Sofkafil";
	
	Definir precios Como Entero;
	Dimension precios[5];
	precios[0]=100;
	precios[1]=500;
	precios[2]=500;
	precios[3]=2000;
	precios[4]=5000;
	
	Definir productoCompra Como Caracter;
	Definir precio Como Entero;
	Definir cantidad Como Entero;
	Definir precioTotal Como Entero;
	Definir productoDevolucion Como Caracter;
	Definir causaDevolucion Como Caracter;
	
	Definir menu1 Como Entero;
	
	Escribir "Droguería Mi Salud";
	Escribir ""; 
	Escribir "Ingrese su nombre de usuario: ";
	Leer nombreCliente;
	
	Escribir "Droguería Mi Salud";
	Escribir ""; 
	Escribir "----------------MENÚ-------------";
	Escribir "1. Comprar producto.";
	Escribir "2. Consultar precios.";
	Escribir "3. Devoluciones.";
	Escribir "Ingrese su elección:";
	Leer menu1;
	
	Si menu1==1 Entonces
		
		Escribir "Comprar producto.";
		Escribir "Nombre del producto: ";
		Leer productoCompra;
		
		Escribir "Cantidad de producto: ";
		Leer cantidad;
		
		//Este sé que no es así, pero como no tenemos BBDD ni archivos pues ajá
		Escribir "Precio producto: ";
		Leer precio;
		
		precioTotal = cantidad * precio;
		
		Escribir "Detalle de compra:";
		Escribir "Producto: ", productoCompra;
		Escribir "Cantidad: ", cantidad;
		Escribir "Precio unitario: $", precio;
		Escribir "Total: $", precioTotal;
	FinSi
	
	Si menu1==2 Entonces
		Escribir "Consultar precios.";
		Escribir "Estos son los productos que tenemos disponibles: ";
		
		
		Repetir
			
			Escribir productos[a], " $", precios[a];
			
			a = a+1;
			
		Hasta Que a>=5;
		
	FinSi
	
	Si menu1==3 Entonces
		
		Escribir "Devoluciones.";
		Escribir "Indique el nombre del producto a devolver: ";
		Leer productoDevolucion;
		Escribir "Indique el casual de la devolución: ";
		Leer causaDevolucion;
		
	FinSi
	
	Si menu1>3 o menu1<0 Entonces
		
		Escribir "No elegiste una opción válida";
		
	FinSi
	
	Escribir "---------------------------------------------------";
	
FinProceso