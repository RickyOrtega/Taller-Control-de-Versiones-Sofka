//El pastelero Don Carlos es el mejor pastelero de la ciudad y requiere
//una aplicación que le permita registrar los pedidos de los clientes en
//cuanto a las tortas que realiza. Cada torta tiene unas características
//propias como sabor, cantidad (porciones) y decoraciones).

//Se requiere que la aplicación permita registrar los pedidos, las tortas
//disponibles y las ventas que se registren diariamente.

SubProceso menu1=setMenu1()
	
	Definir menu1 Como Entero;
	
	Escribir "---Pastelería Don Carlos---";
	Escribir "";
	
	Escribir "----------------MENÚ-------------";
	Escribir "1. Pedidos.";
	Escribir "2. Tortas.";
	Escribir "Ingrese su elección:";
	Leer menu1;
	
	Escribir "---Pastelería Don Carlos---";
	Escribir "";
	
FinSubProceso

SubProceso menu2=setMenu2()
	
	Definir menu2 Como Entero;
	
	Escribir "----------------PEDIDOS-------------";
	Escribir "1. Nuevo pedido.";
	Escribir "2. Pedidos en proceso.";
	Escribir "Ingrese su elección:";
	Leer menu2;
	
FinSubProceso

SubProceso arreglo=setArreglo()
	
	Definir i Como Entero;
	Definir arreglo Como Caracter;
	
	Dimension arreglo[5];
	
	Repetir
		
		arreglo[i]="";
		
	Hasta Que i>=5
	
FinSubProceso

Proceso Ejercicio8
	
	Definir a Como Entero;
	Definir b Como Entero;
	b=0;
	a=0;
	Definir menu1 Como Entero;
	Definir menu2 Como Entero;
	
	Definir nombreCliente Como Caracter;
	Definir pedidos Como Caracter;
	Definir tortas Como Caracter;
	Definir sabor Como Caracter;
	Definir porciones Como Entero;
	Definir decoraciones Como Caracter;
	
	Dimension nombreCliente[5];
	nombreCliente=setArreglo();
	
	Dimension pedidos[5];
	pedidos=setArreglo();
	
	Dimension tortas[5];
	tortas[0]="Pastel de vainilla";
	tortas[1]="Pastel de chocolate";
	tortas[2]="Pastel de comida del diablo";
	tortas[3]="Pastel de zanahoria";
	tortas[4]="Pastel de café";
	
	Dimension sabor[5];
	sabor[0]="Vainilla";
	sabor[1]="Chocolate";
	sabor[2]="Azufre";
	sabor[3]="Zanahoria";
	sabor[4]="Café";
	
	Dimension porciones[5];
	porciones[0]=6;
	porciones[1]=4;
	porciones[2]=666;
	porciones[3]=5;
	porciones[4]=8;
	
	Dimension decoraciones[5];
	decoraciones[0]="Blanca, ideal para bodas.";
	decoraciones[1]="Negra/marrón, ideal para niños.";
	decoraciones[2]="Roja, ideal para pecar.";
	decoraciones[3]="Naranja, ideal para ocasiones casuales.";
	decoraciones[4]="Marrón, ideal para reuniones de amigos/as.";
	
	Repetir
		
		menu1=setMenu1();
		
		Borrar Pantalla;
		
		Si menu1==1 Entonces
			
			menu2=setMenu2();
			
			Si menu2==1 Entonces
				
				Escribir "----------------PEDIDOS-------------";
				Escribir "----------------Nuevo Pedido-------------";
				
				Escribir "Nombre del cliente: ";
				Leer nombreCliente[a];
				
				Escribir "Torta a comprar: ";
				Leer pedidos[a];
				
				a=a+1;
				
			FinSi
			
			Si menu2==2 Entonces
				b=0;
				
				a=0;
				
				Escribir "----------------PEDIDOS-------------";
				Escribir "----------------Pedidos en Proceso-------------";
				
				Repetir
					
					Escribir "----------Pedido----------";
					
					Escribir "Cliente: ",nombreCliente[b];
					Escribir "Pedido: ",pedidos[b];
					b = b+1;
					
				Hasta Que b>=5;
				
			FinSi
			
			Si menu2>2 o menu2<1 Entonces
				
				Escribir "No ingresó una opción válida.";
				
			FinSi
			
		FinSi
		
		Si menu1==2 Entonces
			
			Escribir "----------------TORTAS-------------";
			Escribir "Aquí te enlistamos algunas de las tortas que manejamos";
			
			b=0;
			
			Repetir
				
				Escribir "----------Torta ",b+1, "----------";
				
				Escribir "Torta: ",tortas[b];
				Escribir "Sabor: ",sabor[b];
				Escribir "Cantidad de porciones: ", porciones[b];
				Escribir "Decoración : ", decoraciones[b];
				
				b = b+1;
				
			Hasta Que b>=5;
			
		FinSi
		
	Hasta Que a>=5;
	
FinProceso