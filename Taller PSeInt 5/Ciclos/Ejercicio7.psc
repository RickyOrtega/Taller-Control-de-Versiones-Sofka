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
	
	Escribir "Parqueadero El Guardi�n";
	Escribir "1. Ingresar veh�culo.";
	Escribir "2. Retirar veh�culo.";
	Escribir "3. Comprobar veh�culo en parqueadero.";
	Escribir "Cualquier otro n�mero. Cerrar aplicaci�n";
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
	
	//Datos veh�culo
	Definir placaVehiculo Como Caracter;
	Dimension placaVehiculo[5];
	
	borrarVector(placaVehiculo);
	
	Definir marcaVehiculo Como Caracter;
	Dimension marcaVehiculo[5];
	
	borrarVector(marcaVehiculo);
	
	//Variables de men�
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
				
				//Aclaro que si esto fuese en Java ser�a mucho m�s f�cil y r�pido y m�s si estuviese conectado a una BD
				
				Mientras a<5 Hacer
					
					Si nombreCliente[a]=="" Entonces
						
						Escribir "Nombre cliente: ";
						Leer nombreCliente[a];
						Escribir "Telefono cliente: ";
						Leer numeroTelefono[a];
						
						Escribir "Marca veh�culo: ";
						Leer marcaVehiculo[a];
						Escribir "Placa veh�culo: ";
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
				
				Escribir "------Retirar un veh�culo------";
				
				Mientras a<5 Hacer
					
					Si nombreCliente[a]=="" Entonces
						
						a=a+1;
						
					Sino 
						
						Escribir "Ingrese la placa del veh�culo: ";
						Leer vehiculoRetiro;
						Escribir "Ingrese el n�mero de tel�fono del cliente asociado al veh�culo: ";
						Leer telefonoRetiro;
						
						a=6;
						
					FinSi
					
				FinMientras
				
				Si a<>6 Entonces
					
					Escribir "------Parqueadero vac�o------";
					Escribir "------------------------------------";
					
				SiNo 
					
					Mientras i<5 Hacer
						
						Si vehiculoRetiro == placaVehiculo[i] y telefonoRetiro == numeroTelefono[i] Entonces
							
							Escribir "Ya puede retirar su veh�culo";
							
							i=5;
							
						FinSi
						
						i=i+1;
						
					FinMientras
					
					Si i<>6 Entonces
						
						Escribir "Lo sentimos pero las credenciales asociadas no coinciden con ninguno de nuestro veh�culos/cliente registrados.";
						
					FinSi
					
				FinSi
			3:
				
				Escribir "Comprobar veh�culo";
				
				Mientras a<5 Hacer
					
					Si nombreCliente[a]=="" Entonces
												
						a=a+1;
						
					Sino 
						
						a=6;
						
					FinSi
					
				FinMientras
				
				Si a<6 Entonces
					
					Escribir "------Parqueadero vac�o------";
					Escribir "------------------------------------";
					
				SiNo
					
					Escribir "Ingrese la placa del veh�culo: ";
					Leer vehiculoRetiro; //Para reciclar la variable.
					
					a=0;
					
					Mientras a<5 Hacer
						
						Si nombreCliente[a]==vehiculoRetiro Entonces
							
							Escribir "Su veh�culo s� se encuentra en nuestro patio.";
							
							a=5;
							
						FinSi
						
						a=a+1;
						
					FinMientras
					
					Si a<>6 Entonces
						
						Escribir "Lo sentimos pero las credenciales asociadas no coinciden con ninguno de nuestro veh�culos/cliente registrados.";
						
					FinSi
					
				FinSi
				
			De Otro Modo:
				
				menu1=4;
				
		FinSegun
		
	FinMientras
	
FinProceso