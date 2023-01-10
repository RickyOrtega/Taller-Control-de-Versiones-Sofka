//El parqueadero "El guardi�n" presta sus servicios de parqueadero
//nocturno para los usuarios del barrio y requiere una aplicaci�n
//que permita registrar los veh�culos que se cuidan en estas
//instalaciones. Se sugiere que el parqueadero tenga los atributos
//del veh�culo como son, placa y marca, y los datos del cliente
//como son nombre completo y n�mero de tel�fono. Para cada veh�culo
//se debe permitir la opci�n de ingresar al parqueadero, retirar del
//parqueadero y consultar si un veh�culo se encuentra en el parqueadero.
//Recuerde que el sistema debe terminar cuando el usuario as� lo indique.
//Tenga en presente que el parqueadero solo puede almacenar m�ximo 5 veh�culos.

Proceso Ejercicio7
	
//--------------------ZONA DE VARIABLES--------------------//
	
	//Datos de usuario:
	Definir nombreCliente1 Como Caracter;
	Definir nombreCliente2 Como Caracter;
	Definir nombreCliente3 Como Caracter;
	Definir nombreCliente4 Como Caracter;
	Definir nombreCliente5 Como Caracter;
	
	nombreCliente1="";
	nombreCliente2="";
	nombreCliente3="";
	nombreCliente4="";
	nombreCliente5="";
	
	Definir numeroTelefono1 Como Caracter;
	Definir numeroTelefono2 Como Caracter;
	Definir numeroTelefono3 Como Caracter;
	Definir numeroTelefono4 Como Caracter;
	Definir numeroTelefono5 Como Caracter;
	
	numeroTelefono1="";
	numeroTelefono2="";
	numeroTelefono3="";
	numeroTelefono4="";
	numeroTelefono5="";
	
	//Datos veh�culo
	Definir placaVehiculo1 Como Caracter;
	Definir placaVehiculo2 Como Caracter;
	Definir placaVehiculo3 Como Caracter;
	Definir placaVehiculo4 Como Caracter;
	Definir placaVehiculo5 Como Caracter;
	
	placaVehiculo1="";
	placaVehiculo2="";
	placaVehiculo3="";
	placaVehiculo4="";
	placaVehiculo5="";
	
	Definir marcaVehiculo1 Como Caracter;
	Definir marcaVehiculo2 Como Caracter;
	Definir marcaVehiculo3 Como Caracter;
	Definir marcaVehiculo4 Como Caracter;
	Definir marcaVehiculo5 Como Caracter;
	
	marcaVehiculo1="";
	marcaVehiculo2="";
	marcaVehiculo3="";
	marcaVehiculo4="";
	marcaVehiculo5="";
	
	//Variables de men�
	Definir menu1 Como Entero;
	menu1=0;
	Definir vehiculoRetiro Como Caracter;
	Definir telefonoRetiro Como Caracter;
	Definir placaConsulta Como Caracter;
	
//--------------------FIN ZONA VARIABLES--------------------//
	
	Mientras menu1<>4 Hacer
		
		Escribir "Parqueadero El Guardi�n";
		Escribir "1. Ingresar veh�culo.";
		Escribir "2. Retirar veh�culo.";
		Escribir "3. Comprobar veh�culo en parqueadero.";
		Escribir "Cualquier otro n�mero. Cerrar aplicaci�n";
		Leer menu1;
		
		Limpiar Pantalla;
		
		Segun menu1 Hacer
			
			1:
				Escribir "------Ingresar al parqueadero------";
				
				Si nombreCliente1=="" Entonces
					
					Escribir "Nombre cliente: ";
					Leer nombreCliente1;
					Escribir "Telefono cliente: ";
					Leer numeroTelefono1;
					
					Escribir "Marca veh�culo: ";
					Leer marcaVehiculo1;
					Escribir "Placa veh�culo: ";
					Leer placaVehiculo1;
					
				SiNo
					
					Si nombreCliente2=="" Entonces
						
						Escribir "Nombre cliente: ";
						Leer nombreCliente2;
						Escribir "Telefono cliente: ";
						Leer numeroTelefono2;
						
						Escribir "Marca veh�culo: ";
						Leer marcaVehiculo2;
						Escribir "Placa veh�culo: ";
						Leer placaVehiculo2;
						
					SiNo
						
						Si nombreCliente3=="" Entonces
							
							Escribir "Nombre cliente: ";
							Leer nombreCliente3;
							Escribir "Telefono cliente: ";
							Leer numeroTelefono3;
							
							Escribir "Marca veh�culo: ";
							Leer marcaVehiculo3;
							Escribir "Placa veh�culo: ";
							Leer placaVehiculo3;
							
						SiNo
							
							Si nombreCliente4=="" Entonces
								
								Escribir "Nombre cliente: ";
								Leer nombreCliente4;
								Escribir "Telefono cliente: ";
								Leer numeroTelefono4;
								
								Escribir "Marca veh�culo: ";
								Leer marcaVehiculo4;
								Escribir "Placa veh�culo: ";
								Leer placaVehiculo4;
								
							SiNo
								
								Si nombreCliente5=="" Entonces
									
									Escribir "Nombre cliente: ";
									Leer nombreCliente5;
									Escribir "Telefono cliente: ";
									Leer numeroTelefono5;
									
									Escribir "Marca veh�culo: ";
									Leer marcaVehiculo5;
									Escribir "Placa veh�culo: ";
									Leer placaVehiculo5;
									
								SiNo
									
									Escribir "Parqueadero lleno.";
									Escribir "------------------------------------";
									
								FinSi
								
							FinSi
							
						FinSi
						
					FinSi
					
				FinSi
				
			2:
				
				Escribir "------Retirar un veh�culo------";
				
				Si nombreCliente1=="" y nombreCliente2=="" y nombreCliente3=="" y nombreCliente4=="" y nombreCliente5=="" Entonces
					
					Escribir "------Parqueadero vac�o------";
					Escribir "------------------------------------";
					
				SiNo
					
					Escribir "Ingrese la placa del vehiculo a retirar: ";
					Leer vehiculoRetiro;
					
					Si vehiculoRetiro<>placaVehiculo1 y vehiculoRetiro<>placaVehiculo2 y vehiculoRetiro<>placaVehiculo3 y vehiculoRetiro<>placaVehiculo4 y vehiculoRetiro<>placaVehiculo5 Entonces
						
						Escribir "La placa proporcionada no coincide con las de los veh�culos que tenemos en el parqueadero.";
						
					SiNo
						
						Escribir "Ingrese el n�mero de tel�fono del cliente asociado al veh�culo: ";
						Leer telefonoRetiro;
						
						Si vehiculoRetiro==placaVehiculo1 y telefonoRetiro==numeroTelefono1 o vehiculoRetiro==placaVehiculo2 y telefonoRetiro==numeroTelefono2 o vehiculoRetiro==placaVehiculo3 y telefonoRetiro==numeroTelefono3 o vehiculoRetiro==placaVehiculo4 y telefonoRetiro==numeroTelefono4 o vehiculoRetiro==placaVehiculo5 y telefonoRetiro==numeroTelefono5 Entonces
							
							Escribir "Puede retirar su veh�culo";
							
							Si vehiculoRetiro==placaVehiculo1 Entonces
								
								nombreCliente1="";
								numeroTelefono1="";
								marcaVehiculo1="";
								placaVehiculo1="";
								
							FinSi
							
							Si vehiculoRetiro==placaVehiculo2 Entonces
								
								nombreCliente2="";
								numeroTelefono2="";
								marcaVehiculo2="";
								placaVehiculo2="";
								
							FinSi
							
							Si vehiculoRetiro==placaVehiculo3 Entonces
								
								nombreCliente3="";
								numeroTelefono3="";
								marcaVehiculo3="";
								placaVehiculo3="";
								
							FinSi
							
							Si vehiculoRetiro==placaVehiculo4 Entonces
								
								nombreCliente4="";
								numeroTelefono4="";
								marcaVehiculo4="";
								placaVehiculo4="";
								
							FinSi
							
							Si vehiculoRetiro==placaVehiculo5 Entonces
								
								nombreCliente5="";
								numeroTelefono5="";
								marcaVehiculo5="";
								placaVehiculo5="";
								
							FinSi
							
						SiNo
							
							Escribir "El n�mero de tel�fono no coincide.";
							
						FinSi
						
					FinSi
					
				FinSi
				
			3:
				
				Escribir "Comprobar veh�culo";
				
				Si nombreCliente1=="" y nombreCliente2=="" y nombreCliente3=="" y nombreCliente4=="" y nombreCliente5=="" Entonces
					
					Escribir "------Parqueadero vac�o------";
					Escribir "------------------------------------";
					
				SiNo
					
					Escribir "Ingrese la placa del veh�culo para comprobar la existencia en el parqueadero.";
					Leer vehiculoRetiro;//Para "reciclar" la variable
					
					Si vehiculoRetiro<>placaVehiculo1 y vehiculoRetiro<>placaVehiculo2 y vehiculoRetiro<>placaVehiculo3 y vehiculoRetiro<>placaVehiculo4 y vehiculoRetiro<>placaVehiculo5 Entonces
						
						Escribir "La placa proporcionada no coincide con las placas de los veh�culos que tenemos alojados en el parqueadero.";
						
					SiNo
						
						Escribir "Su veh�culo s� se encuentra en nuestro patio.";
						
					FinSi
					
				FinSi
				
			De Otro Modo:
				
				menu1=4;
				
		FinSegun
		
	FinMientras
	
FinProceso