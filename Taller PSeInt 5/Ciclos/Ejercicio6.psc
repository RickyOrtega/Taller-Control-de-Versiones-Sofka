//Se est� creando una aplicaci�n que va a estar conectada
//con un prototipo que permita almacenar contactos
//telef�nicos en el dispositivo. Para ello cada contacto
//debe contener nombre completo, tel�fono y organizaci�n.
//Se requiere que la aplicaci�n permita a�adir 3 contactos 
//verificando que el n�mero no est� almacenado, buscar
//contactos almacenados y eliminar contactos si el usuario
//lo requiere. Recuerde que el sistema debe terminar cuando
//el usuario as� lo indique.

SubProceso menu1=setMenu1()
	
	Definir menu1 Como Entero;
	
	Escribir "-----Agenda-----";
	Escribir "1. Crear contacto.";
	Escribir "2. Mis contactos.";
	Escribir "3. Eliminar contacto.";
	Escribir "Cualquier otro n�mero. Cerrar aplicaci�n";
	Leer menu1;
	
FinSubProceso

SubProceso misContactos(nombreContacto, organizacion, numeroContacto)
	
	Definir a Como Entero;
	a=0;
	
	Escribir "-----Mis Contactos-----";
	
	Si nombreContacto[0]=="" y nombreContacto[1]=="" y nombreContacto[2]=="" Entonces
		
		Escribir "Agenda vac�a.";
		
	SiNo
		
		Mientras a<3 Hacer
			
			Si nombreContacto[a]<>"" Entonces
				
				Escribir nombreContacto[a];
				Escribir organizacion[a];
				Escribir numeroContacto[a];
				
				Escribir "------------------------";
				
			FinSi
			
			a=a+1;
			
		FinMientras
		
	FinSi
FinSubProceso

SubProceso borrarVector(arreglo)
	
	Definir i Como Entero;
	
	i=0;
	
	Repetir
		
		arreglo[i]="";
		
		i=i+1;
		
	Hasta Que i>=3
	
FinSubProceso

SubProceso borrarRegistro(nombreContacto, organizacion, numeroContacto,i)
	
	nombreContacto[i]="";
	organizacion[i]="";
	numeroContacto[i]="";
	
FinSubProceso

SubProceso eliminarContacto(nombreContacto, organizacion, numeroContacto, contactoEliminar)
	
	Definir i Como Entero;
	i=0;
	
	Repetir
		
		Si contactoEliminar==numeroContacto[i] Entonces
			
			Escribir "Contacto eliminado.";
			
			borrarRegistro(nombreContacto, organizacion, numeroContacto,i);
			
			i=4;
			
		SiNo
			
		FinSi
		
		i=i+1;
		
	Hasta Que i>=3
	
	Si i==3 Entonces
		
		Escribir "No se encontr� un contacto que tenga asociado el n�mero proporcionado.";
		
	FinSi
	
FinSubProceso

Proceso Ejercicio6
	
	Definir nombreContacto Como Caracter;
	Definir organizacion Como Caracter;
	Definir numeroContacto Como Caracter;
	
	Dimension nombreContacto[3];
	Dimension organizacion[3];
	Dimension numeroContacto[3];
	
	borrarVector(nombreContacto);
	borrarVector(organizacion);
	borrarVector(numeroContacto);
	
	Definir menu1 Como Entero;
	Definir i Como Entero;
	Definir j Como Entero;
	
	Definir contactoEliminar Como Caracter;
	
	Repetir
		
		menu1=setMenu1();
		
		Limpiar Pantalla;
		
		Segun menu1 Hacer
			
			1:
				
				Escribir "-----Nuevo Contacto-----";
				
				Si nombreContacto[0]<>"" y nombreContacto[1]<>"" y nombreContacto[2]<>"" Entonces
					
					Escribir "Agenda llena.";
					
				SiNo
					
					i=0;
					
					Mientras i<3 Hacer
						
						Si nombreContacto[i]=="" Entonces
							
							Escribir "Ingrese el nombre de contacto: ";
							Leer nombreContacto[i];
							Escribir "Organizaci�n: ";
							Leer organizacion[i];
							Escribir "N�mero: ";
							Leer numeroContacto[i];
							
							j=0;
							
							Mientras j<3 Hacer
								
								Si numeroContacto[j]==numeroContacto[i] y i<>j Entonces
									
									Escribir "El n�mero ingresado ya se encuentra almacenado en otro contacto.";
									
									borrarRegistro(nombreContacto, organizacion, numeroContacto,i);
									
									j=2;
									
								FinSi
								
								j=j+1;
								
							FinMientras
							
							i=2;
														
						FinSi
									
						i=i+1; 
						
					FinMientras
					
				FinSi
				
			2:
				
				misContactos(nombreContacto, organizacion, numeroContacto);
				
			3:
				Escribir "-----Eliminar Contacto-----";
				
				Si nombreContacto[0]=="" y nombreContacto[1]=="" y nombreContacto[2]=="" Entonces
					
					Escribir "Agenda vac�a.";
					
				SiNo
					
					Escribir "N�mero contacto a eliminar: ";
					Leer contactoEliminar;
					
					eliminarContacto(nombreContacto, organizacion, numeroContacto, contactoEliminar);
					
				FinSi
				
			De Otro Modo:
				
				menu1=4;
				
		FinSegun
		
	Hasta Que menu1==4
	
FinProceso