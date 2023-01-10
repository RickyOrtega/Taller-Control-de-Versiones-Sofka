//La escuela automovil�stica "El Maestro" requiere una aplicaci�n 
//que permita registrar a sus clientes en los cursos de ense�anza
//automovil�stica y establecer quienes lo han aprobado para
//continuar con el tr�mite de adquirir la licencia de conducci�n.
//Para cada usuario se debe permitir registrar su ingreso al
//curso, consultar usuarios que hayan presentado el curso y
//resultados de la prueba del curso (si fueron aprobados o no).
//Recuerde que el sistema debe terminar cuando el usuario as�
//lo indique. Tenga presente que la escuela tiene capacidad
//m�xima de gestionar 8 usuarios en su totalidad.

//Para la simulaci�n usar� el estandar de licencias de conducci�n colombianas

//Las tom� de: motor.com.co/industria/Conozca-los-tipos-de-licencia-de-conduccion-en-Colombia-20220523-0004.html

//A1: Motos de bajo cilindraje.
//A2: Motos de alto cilindraje.
//B1: Autos particulares.
//B2: Camiones y buses de uso particular.
//B3: Veh�culos articulados particulares.
//C1: Autos peque�os de servicio p�blico.
//C2: Autos grandes de servicio p�blico.
//C3: Veh�culos articulados de servicio p�blico.

//Funciones 

SubProceso mostrarRegistros(nombreUsuario, curso, aprobado)
	
	Definir a Como Entero;
	
	a=0;
	
	Mientras a<8 Hacer
		
		Si nombreUsuario[a]<>"" Entonces
			
			Escribir nombreUsuario[a];
			Escribir "Curso: ", curso[a];
			
			Si aprobado[a]==Verdadero Entonces
				
				Escribir "Estado: Aprobado";
				
			SiNo
				
				Escribir "Estado: No Aprobado";
				
			FinSi
			
			Escribir "----------------------------------------------";
			
		FinSi
		
		a=a+1;
		
	FinMientras
	
FinSubProceso

SubProceso borrarVector(arreglo, i)
	
	Definir a Como Entero;
	
	a=0;
	
	Repetir
		
		arreglo[a]="";
		
		a=a+1;
		
	Hasta Que a>=i
	
FinSubProceso

SubProceso menu1=setMenu1()
	
	Definir menu1 Como Entero;
	menu1=0;
	
	Escribir "Parqueadero El Guard�an";
	Escribir "1. Nuevo usuario.";
	Escribir "2. Consultar usuarios registrados.";
	Escribir "3. Cambiar estado prueba.";
	Escribir "Cualquier otro n�mero. Cerrar aplicaci�n";
	Leer menu1;
	
FinSubProceso

SubProceso menu2=setMenu2()
	
	Definir menu2 Como Entero;
	menu2=0;
	
	Repetir
		
		Escribir "Teclee una opci�n del curso realizado: ";
		Escribir "1. A1, Motos de bajo cilindraje.";
		Escribir "2. A2, Motos de alto cilindraje.";
		Escribir "3. B1, Autos particulares.";
		Escribir "4. B2, Camiones y buses de uso particular.";
		Escribir "5. B3, Veh�culos articulados particulares.";
		Escribir "6. C1, Autos peque�os de servicio p�blico.";
		Escribir "7. C2, Autos grandes de servicio p�blico.";
		Escribir "8. C3, Veh�culos articulados de servicio p�blico.";
		Leer menu2;
		
	Hasta Que menu2>=1 y menu2<= 8
	
FinSubProceso

Proceso Ejercicio8
	
///--------------------Datos usuarios--------------------///
	
	Definir nombreUsuario Como Caracter;
	Definir cedulaUsuario Como Caracter;
	Definir curso Como Caracter;
	Definir aprobado Como Logico;
	
	Dimension nombreUsuario[8];
	Dimension cedulaUsuario[8];
	Dimension curso[8];
	Dimension aprobado[8];
	
	Definir a Como Entero;
	
	a=0;
	
	Repetir
		
		aprobado[a]=falso;
		
		a=a+1;
		
	Hasta Que a>=8
	
	borrarVector(nombreUsuario, 8);
	borrarVector(cedulaUsuario, 8);
	borrarVector(curso, 8);
	
///--------------------Menu Stuff--------------------///
	Definir menu1 Como Entero;
	menu1=0;
	Definir menu2 Como Entero;
	menu2=1;
	
	Definir usuarioRetiro Como Entero;
	Definir cedulaRetiro Como Entero;
	
	Definir cedulaCambio Como Caracter;
	
	Repetir
		
		menu1= setMenu1();
		
		a=0;
		
		Borrar Pantalla;
		
		Segun menu1 Hacer
			
			1:
				
				//Primero compruebo que hayan posiciones disponibles
				Mientras a<8 Hacer
					
					Si nombreUsuario[a]=="" Entonces
						
						Escribir "Ingrese el nombre del cliente:";
						Leer nombreUsuario[a];
						Escribir "Ingrese la identificaci�n del cliente:";
						Leer cedulaUsuario[a];
						
						menu2=setMenu2();
						
						Repetir
							
							Segun menu2 Hacer
								
								1:
									curso[a]="A1, Motos de bajo cilindraje.";
								2:
									curso[a]="A2, Motos de alto cilindraje.";
								3:
									curso[a]="B1, Autos particulares.";
								4:
									curso[a]="B2, Camiones y buses de uso particular.";
								5:
									curso[a]="B3, Veh�culos articulados particulares.";
								6:
									curso[a]="C1, Autos peque�os de servicio p�blico.";
								7:
									curso[a]="C2, Autos grandes de servicio p�blico.";
								8:
									curso[a]="C3, Veh�culos articulados de servicio p�blico.";
									
								De Otro Modo:
									menu2=9;
							FinSegun
							
						Hasta Que menu2<>9;
						
						Repetir
							
							Escribir "Teclee una opci�n para definir el estado de finalizaci�n del curso y aprobaci�n de la prueba final: ";
							Escribir "1. Terminado";
							Escribir "2. No terminado";
							Leer menu2;
							
							Segun menu2 Hacer
								
								1: 
									aprobado[a]=Verdadero;
								2: 
									aprobado[a]=Falso;
									
								De Otro Modo:
									menu2=0;
									
							FinSegun
							
						Hasta Que menu2<>0
						
						a=9;
						
					SiNo
						
						a=a+1;
						
					FinSi
					
				FinMientras
				
				Si a<>9 Entonces
					
					Escribir "No tenemos cupos en este momento.";
					
				FinSi
				
			2:
				Escribir "Consultar usuarios registrados.";
				
				Mientras a<8 Hacer
					
					Si nombreUsuario[a]=="" Entonces
						
						a=a+1;
						
					SiNo
						
						mostrarRegistros(nombreUsuario, curso, aprobado);
						
						a=9;
						
					FinSi
					
				FinMientras
				
				Si a<>9 Entonces
					
					Escribir "A�n no tenemos usuarios inscritos.";
					
				FinSi
				
			3:
				Escribir "Cambiar estado resultados prueba";
				
				Mientras a<8 Hacer
					
					Si nombreUsuario[a]=="" Entonces
						
						a=a+1;
						
					SiNo
						
						Escribir "Ingrese el documento del usuario: ";
						Leer cedulaCambio;
						
						a=0;
						
						Mientras a<8 Hacer
							
							
							Si cedulaCambio==cedulaUsuario[a] Entonces
								
								Escribir "El estado actual es: ";
								
								Si aprobado[a]==Verdadero Entonces
									
									Escribir "Estado: Aprobado";
									
								SiNo
									
									Escribir "Estado: No Aprobado";
									
								FinSi
								Escribir "�Desea cambiarlo?";
								Escribir "1. S�";
								Escribir "2. No";
								Leer menu2;
								
								Si menu2==1 Entonces
									
									aprobado[a]=!aprobado[a];
									
									Escribir "Cambiado el estado de realizaci�n de la prueba";
									
								FinSi
								
							FinSi
							
							a=a+1;
							
						FinMientras
						
						a=9;
						
					FinSi
					
				FinMientras
				
				Si a<>9 Entonces
					
					Escribir "A�n no tenemos usuarios inscritos.";
					
				FinSi
				
			De Otro Modo:
				menu1=4;
			
		FinSegun
		
		Escribir "------------------------------------";
		
	Hasta Que menu1==4
	
FinProceso