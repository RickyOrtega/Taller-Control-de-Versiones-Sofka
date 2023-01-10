//El parqueadero "El guardián" presta sus servicios de parqueadero
//nocturno para los usuarios del barrio y requiere una aplicación
//que permita registrar los vehículos que se cuidan en estas
//instalaciones. Se sugiere que el parqueadero tenga los atributos
//del vehículo como son, placa y marca, y los datos del cliente
//como son nombre completo y número de teléfono. Para cada vehículo
//se debe permitir la opción de ingresar al parqueadero, retirar del
//parqueadero y consultar si un vehículo se encuentra en el parqueadero.
//Recuerde que el sistema debe terminar cuando el usuario así lo indique.
//Tenga en presente que el parqueadero solo puede almacenar máximo 5 vehículos.

SubProceso borrarVector(arreglo)
	
	Definir i Como Entero;
	
	i=0;
	
	Repetir
		
		arreglo[i]="";
		
		i=i+1;
		
	Hasta Que i>=5
	
FinSubProceso

SubProceso borrarRegistro(nombreCliente, numeroTelefono, placaVehiculo,marcaVehiculo)
	
	nombreCliente[i]="";
	numeroTelefono[i]="";
	placaVehiculo[i]="";
	marcaVehiculo[i]="";
	
FinSubProceso

SubProceso menu1=setMenu1()
	
	Definir menu1 Como Entero;
	
	Escribir "Parqueadero El Guardián";
	Escribir "1. Ingresar vehículo.";
	Escribir "2. Retirar vehículo.";
	Escribir "3. Comprobar vehículo en parqueadero.";
	Escribir "Cualquier otro número. Cerrar aplicación";
	Leer menu1;
	
FinSubProceso

Proceso Ejercicio7
	
//--------------------ZONA DE VARIABLES--------------------//
	
	//Datos de usuario:
	Definir nombreCliente Como Caracter;
	Dimension nombreCliente[5];
	
	borrarVector(nombreCliente);
	
	Definir numeroTelefono Como Caracter;
	Dimension numeroTelefono[5];
	
	borrarVector(numeroTelefono);
	
	//Datos vehículo
	Definir placaVehiculo Como Caracter;
	Dimension placaVehiculo[5];
	
	borrarVector(placaVehiculo);
	
	Definir marcaVehiculo Como Caracter;
	Dimension marcaVehiculo[5];
	
	borrarVector(marcaVehiculo);
	
	//Variables de menú
	Definir a Como Entero;
	a=0;
	Definir menu1 Como Entero;
	menu1=0;
	Definir i Como Entero;
	i=0;
	Definir vehiculoRetiro Como Caracter;
	Definir telefonoRetiro Como Caracter;
	Definir placaConsulta Como Caracter;
	
//--------------------FIN ZONA VARIABLES--------------------//
	
	Mientras menu1<>4 Hacer
		
		menu1=setMenu1();
		
		Limpiar Pantalla;
		
		a=0;
		
		Segun menu1 Hacer
			
			1:
				
				Escribir "------Ingresar al parqueadero------";
				
				//Aclaro que si esto fuese en Java sería mucho más fácil y rápido y más si estuviese conectado a una BD
				
				Mientras a<5 Hacer
					
					Si nombreCliente[a]=="" Entonces
						
						Escribir "Nombre cliente: ";
						Leer nombreCliente[a];
						Escribir "Telefono cliente: ";
						Leer numeroTelefono[a];
						
						Escribir "Marca vehículo: ";
						Leer marcaVehiculo[a];
						Escribir "Placa vehículo: ";
						Leer placaVehiculo[a];
						
						a=6;
						
					FinSi
					
					a=a+1;
					
				FinMientras
				
				Si a==5 Entonces
					
					Escribir "Parqueadero lleno.";
					
				FinSi
				Escribir "------------------------------------";
			2:
				
				Escribir "------Retirar un vehículo------";
				
				Mientras a<5 Hacer
					
					Si nombreCliente[a]=="" Entonces
						
						a=a+1;
						
					Sino 
						
						Escribir "Ingrese la placa del vehículo: ";
						Leer vehiculoRetiro;
						Escribir "Ingrese el número de teléfono del cliente asociado al vehículo: ";
						Leer telefonoRetiro;
						
						a=6;
						
					FinSi
					
				FinMientras
				
				Si a<>6 Entonces
					
					Escribir "------Parqueadero vacío------";
					Escribir "------------------------------------";
					
				SiNo 
					
					Mientras i<5 Hacer
						
						Si vehiculoRetiro == placaVehiculo[i] y telefonoRetiro == numeroTelefono[i] Entonces
							
							Escribir "Ya puede retirar su vehículo";
							
							i=5;
							
						FinSi
						
						i=i+1;
						
					FinMientras
					
					Si i<>6 Entonces
						
						Escribir "Lo sentimos pero las credenciales asociadas no coinciden con ninguno de nuestro vehículos/cliente registrados.";
						
					FinSi
					
				FinSi
			3:
				
				Escribir "Comprobar vehículo";
				
				Mientras a<5 Hacer
					
					Si nombreCliente[a]=="" Entonces
												
						a=a+1;
						
					Sino 
						
						a=6;
						
					FinSi
					
				FinMientras
				
				Si a<6 Entonces
					
					Escribir "------Parqueadero vacío------";
					Escribir "------------------------------------";
					
				SiNo
					
					Escribir "Ingrese la placa del vehículo: ";
					Leer vehiculoRetiro; //Para reciclar la variable.
					
					a=0;
					
					Mientras a<5 Hacer
						
						Si nombreCliente[a]==vehiculoRetiro Entonces
							
							Escribir "Su vehículo sí se encuentra en nuestro patio.";
							
							a=5;
							
						FinSi
						
						a=a+1;
						
					FinMientras
					
					Si a<>6 Entonces
						
						Escribir "Lo sentimos pero las credenciales asociadas no coinciden con ninguno de nuestro vehículos/cliente registrados.";
						
					FinSi
					
				FinSi
				
			De Otro Modo:
				
				menu1=4;
				
		FinSegun
		
	FinMientras
	
FinProceso