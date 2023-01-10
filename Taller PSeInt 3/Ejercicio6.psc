//Se está creando una aplicación que va a estar conectada
//con un prototipo que permita almacenar contactos
//telefónicos en el dispositivo. Para ello cada contacto
//debe contener nombre completo, teléfono y organización.
//Se requiere que la aplicación permita añadir 3 contactos 
//verificando que el número no esté almacenado, buscar
//contactos almacenados y eliminar contactos si el usuario
//lo requiere. Recuerde que el sistema debe terminar cuando
//el usuario así lo indique.
		
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
		Escribir "Cualquier otro número. Cerrar aplicación";
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
						Escribir "Organización: ";
						Leer organizacion1;
						Escribir "Número: ";
						Leer numeroContacto1;
						
						Si numeroContacto1==numeroContacto2 o numeroContacto1==numeroContacto3 Entonces
							
							Escribir "El número ingresado ya se encuentra almacenado en otro contacto.";
							
							nombreContacto1="";
							organizacion1="";
							numeroContacto1="";
							
						FinSi
						
					SiNo
						
						Si nombreContacto1<>"" y nombreContacto2=="" Entonces
							
							Escribir "Ingrese el nombre de contacto: ";
							Leer nombreContacto2;
							Escribir "Organización: ";
							Leer organizacion2;
							Escribir "Número: ";
							Leer numeroContacto2;
							
							Si numeroContacto2==numeroContacto1 o numeroContacto2==numeroContacto3 Entonces
								
								Escribir "El número ingresado ya se encuentra almacenado en otro contacto.";
								
								nombreContacto2="";
								organizacion2="";
								numeroContacto2="";
								
							FinSi
							
						SiNo
							
							Si nombreContacto1<>"" y nombreContacto2<>"" y nombreContacto3=="" Entonces
								
								Escribir "Ingrese el nombre de contacto: ";
								Leer nombreContacto3;
								Escribir "Organización: ";
								Leer organizacion3;
								Escribir "Número: ";
								Leer numeroContacto3;
								
								Si numeroContacto3==numeroContacto2 o numeroContacto3==numeroContacto1 Entonces
									
									Escribir "El número ingresado ya se encuentra almacenado en otro contacto.";
									
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
					
					Escribir "Agenda vacía.";
					
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
					
					Escribir "Agenda vacía.";
					
				SiNo
					
					Escribir "Digite el número del contacto a eliminar: ";
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
								
								Escribir "No existe un contacto con el número proporcionado";
								
							FinSi
							
						FinSi
						
					FinSi
					
				FinSi
				
				
			De Otro Modo:
				
				menu1=4;
				
		FinSegun
		
	Hasta Que menu1==4
	
FinProceso