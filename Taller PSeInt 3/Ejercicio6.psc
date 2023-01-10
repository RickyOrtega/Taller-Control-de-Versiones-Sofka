//Se est� creando una aplicaci�n que va a estar conectada
//con un prototipo que permita almacenar contactos
//telef�nicos en el dispositivo. Para ello cada contacto
//debe contener nombre completo, tel�fono y organizaci�n.
//Se requiere que la aplicaci�n permita a�adir 3 contactos 
//verificando que el n�mero no est� almacenado, buscar
//contactos almacenados y eliminar contactos si el usuario
//lo requiere. Recuerde que el sistema debe terminar cuando
//el usuario as� lo indique.
		
Proceso Ejercicio6
	
	Definir nombreContacto1 Como Caracter;
	Definir organizacion1 Como Caracter;
	Definir numeroContacto1 Como Caracter;
	
	nombreContacto1="";
	organizacion1="";
	numeroContacto1="";
	
	Definir nombreContacto2 Como Caracter;
	Definir organizacion2 Como Caracter;
	Definir numeroContacto2 Como Caracter;
	
	nombreContacto2="";
	organizacion2="";
	numeroContacto2="";
	
	Definir nombreContacto3 Como Caracter;
	Definir organizacion3 Como Caracter;
	Definir numeroContacto3 Como Caracter;
	
	nombreContacto3="";
	organizacion3="";
	numeroContacto3="";
	
	Definir contactoEliminar Como Caracter;
	
	Definir menu1 Como Entero;
	
	Repetir
		
		Escribir "-----Agenda-----";
		Escribir "1. Crear contacto.";
		Escribir "2. Mis contactos.";
		Escribir "3. Eliminar contacto.";
		Escribir "Cualquier otro n�mero. Cerrar aplicaci�n";
		Leer menu1;
		
		Limpiar Pantalla;
		
		Segun menu1 Hacer
			
			1:
				
				Escribir "-----Nuevo Contacto-----";
				
				Si nombreContacto1<>"" y nombreContacto2<>"" y nombreContacto3<>"" Entonces
					
					Escribir "Agenda llena.";
					
				SiNo
					
					Si nombreContacto1=="" Entonces
						
						Escribir "Ingrese el nombre de contacto: ";
						Leer nombreContacto1;
						Escribir "Organizaci�n: ";
						Leer organizacion1;
						Escribir "N�mero: ";
						Leer numeroContacto1;
						
						Si numeroContacto1==numeroContacto2 o numeroContacto1==numeroContacto3 Entonces
							
							Escribir "El n�mero ingresado ya se encuentra almacenado en otro contacto.";
							
							nombreContacto1="";
							organizacion1="";
							numeroContacto1="";
							
						FinSi
						
					SiNo
						
						Si nombreContacto1<>"" y nombreContacto2=="" Entonces
							
							Escribir "Ingrese el nombre de contacto: ";
							Leer nombreContacto2;
							Escribir "Organizaci�n: ";
							Leer organizacion2;
							Escribir "N�mero: ";
							Leer numeroContacto2;
							
							Si numeroContacto2==numeroContacto1 o numeroContacto2==numeroContacto3 Entonces
								
								Escribir "El n�mero ingresado ya se encuentra almacenado en otro contacto.";
								
								nombreContacto2="";
								organizacion2="";
								numeroContacto2="";
								
							FinSi
							
						SiNo
							
							Si nombreContacto1<>"" y nombreContacto2<>"" y nombreContacto3=="" Entonces
								
								Escribir "Ingrese el nombre de contacto: ";
								Leer nombreContacto3;
								Escribir "Organizaci�n: ";
								Leer organizacion3;
								Escribir "N�mero: ";
								Leer numeroContacto3;
								
								Si numeroContacto3==numeroContacto2 o numeroContacto3==numeroContacto1 Entonces
									
									Escribir "El n�mero ingresado ya se encuentra almacenado en otro contacto.";
									
									nombreContacto3="";
									organizacion3="";
									numeroContacto3="";
									
								FinSi
								
							FinSi
							
						FinSi
						
					FinSi
					
				FinSi
				
			2:
				Escribir "-----Mis Contactos-----";
				
				Si nombreContacto1=="" y nombreContacto2=="" y nombreContacto3=="" Entonces
					
					Escribir "Agenda vac�a.";
					
				SiNo
					
					Si nombreContacto1<>"" Entonces
						
						Escribir nombreContacto1;
						Escribir organizacion1;
						Escribir numeroContacto1;
						
						Escribir "------------------------";
						
					FinSi
					
					Si nombreContacto2<>"" Entonces
						
						Escribir nombreContacto2;
						Escribir organizacion2;
						Escribir numeroContacto2;
						
						Escribir "------------------------";
						
					FinSi
					
					Si nombreContacto3<>"" Entonces
						
						Escribir nombreContacto3;
						Escribir organizacion3;
						Escribir numeroContacto3;
						
						Escribir "------------------------";
						
					FinSi
					
				FinSi
				
			3:
				Escribir "-----Eliminar Contacto-----";
				
				Si nombreContacto1=="" y nombreContacto2=="" y nombreContacto3=="" Entonces
					
					Escribir "Agenda vac�a.";
					
				SiNo
					
					Escribir "Digite el n�mero del contacto a eliminar: ";
					Leer contactoEliminar;
					
					Si numeroContacto1==contactoEliminar Entonces
						
						nombreContacto1="";
						organizacion1="";
						numeroContacto1="";
						
						Escribir "Contacto eliminado";
						
					SiNo
						
						Si numeroContacto2==contactoEliminar Entonces
							
							nombreContacto2="";
							organizacion2="";
							numeroContacto2="";
							
							Escribir "Contacto eliminado";
							
						SiNo
							
							Si numeroContacto3==contactoEliminar Entonces
								
								nombreContacto3="";
								organizacion3="";
								numeroContacto3="";
								
								Escribir "Contacto eliminado";
								
							SiNo
								
								Escribir "No existe un contacto con el n�mero proporcionado";
								
							FinSi
							
						FinSi
						
					FinSi
					
				FinSi
				
				
			De Otro Modo:
				
				menu1=4;
				
		FinSegun
		
	Hasta Que menu1==4
	
FinProceso