//La escuela automovilística "El Maestro" requiere una aplicación 
//que permita registrar a sus clientes en los cursos de enseñanza
//automovilística y establecer quienes lo han aprobado para
//continuar con el trámite de adquirir la licencia de conducción.
//Para cada usuario se debe permitir registrar su ingreso al
//curso, consultar usuarios que hayan presentado el curso y
//resultados de la prueba del curso (si fueron aprobados o no).
//Recuerde que el sistema debe terminar cuando el usuario así
//lo indique. Tenga presente que la escuela tiene capacidad
//máxima de gestionar 8 usuarios en su totalidad.

//Para la simulación usaré el estandar de licencias de conducción colombianas

//Las tomé de: motor.com.co/industria/Conozca-los-tipos-de-licencia-de-conduccion-en-Colombia-20220523-0004.html

//A1: Motos de bajo cilindraje.
//A2: Motos de alto cilindraje.
//B1: Autos particulares.
//B2: Camiones y buses de uso particular.
//B3: Vehículos articulados particulares.
//C1: Autos pequeños de servicio público.
//C2: Autos grandes de servicio público.
//C3: Vehículos articulados de servicio público.

Proceso Ejercicio8
	
///--------------------Datos usuarios--------------------///
	
//Datos usuario 1
	
	Definir nombreUsuario1 Como Caracter;
	Definir cedulaUsuario1 Como Caracter;
	Definir curso1 Como Caracter;
	Definir aprobado1 Como Logico;
	
	nombreUsuario1 ="";
	cedulaUsuario1 ="";	
	curso1 ="";
	aprobado1=Falso;
	
//Datos usuario 2
	
	Definir nombreUsuario2 Como Caracter;
	Definir cedulaUsuario2 Como Caracter;
	Definir curso2 Como Caracter;
	Definir aprobado2 Como Logico;
	
	nombreUsuario2 ="";
	cedulaUsuario2 ="";	
	curso2 ="";
	aprobado2=Falso;
	
//Datos usuario 3
	
	Definir nombreUsuario3 Como Caracter;
	Definir cedulaUsuario3 Como Caracter;
	Definir curso3 Como Caracter;
	Definir aprobado3 Como Logico;
	
	nombreUsuario3 ="";
	cedulaUsuario3 ="";	
	curso3 ="";
	aprobado3=Falso;
	
//Datos usuario 4
	
	Definir nombreUsuario4 Como Caracter;
	Definir cedulaUsuario4 Como Caracter;
	Definir curso4 Como Caracter;
	Definir aprobado4 Como Logico;
	
	nombreUsuario4 ="";
	cedulaUsuario4 ="";	
	curso4 ="";
	aprobado4=Falso;
	
//Datos usuario 5
	
	Definir nombreUsuario5 Como Caracter;
	Definir cedulaUsuario5 Como Caracter;
	Definir curso5 Como Caracter;
	Definir aprobado5 Como Logico;
	
	nombreUsuario5 ="";
	cedulaUsuario5 ="";	
	curso5 ="";
	aprobado5=Falso;
	
//Datos usuario 6
	
	Definir nombreUsuario6 Como Caracter;
	Definir cedulaUsuario6 Como Caracter;
	Definir curso6 Como Caracter;
	Definir aprobado6 Como Logico;
	
	nombreUsuario6 ="";
	cedulaUsuario6 ="";	
	curso6 ="";
	aprobado6=Falso;
	
//Datos usuario 7
	
	Definir nombreUsuario7 Como Caracter;
	Definir cedulaUsuario7 Como Caracter;
	Definir curso7 Como Caracter;
	Definir aprobado7 Como Logico;
	
	nombreUsuario7 ="";
	cedulaUsuario7 ="";	
	curso5 ="";
	aprobado5=Falso;
	
//Datos usuario 8
	
	Definir nombreUsuario8 Como Caracter;
	Definir cedulaUsuario8 Como Caracter;
	Definir curso8 Como Caracter;
	Definir aprobado8 Como Logico;
	
	nombreUsuario8 ="";
	cedulaUsuario8 ="";	
	curso8 ="";
	aprobado8=Falso;
	
///--------------------Menu Stuff--------------------///
	Definir menu1 Como Entero;
	menu1=0;
	Definir menu2 Como Entero;
	menu2=1;
	
	Definir usuarioRetiro Como Entero;
	Definir cedulaRetiro Como Entero;
	
	Definir cedulaCambio Como Caracter;
	
	Repetir
		
		Escribir "Parqueadero El Guardían";
		Escribir "1. Nuevo usuario.";
		Escribir "2. Consultar usuarios registrados.";
		Escribir "3. Cambiar estado prueba.";
		Escribir "Cualquier otro número. Cerrar aplicación";
		Leer menu1;
		
		Segun menu1 Hacer
			
			1:
				
				Si nombreUsuario1=="" Entonces
					
					Escribir "Ingrese el nombre del cliente:";
					Leer nombreUsuario1;
					Escribir "Ingrese la identificación del cliente:";
					Leer cedulaUsuario1;
					
					Repetir
						
						Escribir "Teclee una opción del curso realizado: ";
						Escribir "1. A1, Motos de bajo cilindraje.";
						Escribir "2. A2, Motos de alto cilindraje.";
						Escribir "3. B1, Autos particulares.";
						Escribir "4. B2, Camiones y buses de uso particular.";
						Escribir "5. B3, Vehículos articulados particulares.";
						Escribir "6. C1, Autos pequeños de servicio público.";
						Escribir "7. C2, Autos grandes de servicio público.";
						Escribir "8. C3, Vehículos articulados de servicio público.";
						Leer menu2;
						
					Hasta Que menu2>=1 y menu2<= 8
					
					Repetir
						
						Segun menu2 Hacer
							
							1:
								curso1="A1, Motos de bajo cilindraje.";
							2:
								curso1="A2, Motos de alto cilindraje.";
							3:
								curso1="B1, Autos particulares.";
							4:
								curso1="B2, Camiones y buses de uso particular.";
							5:
								curso1="B3, Vehículos articulados particulares.";
							6:
								curso1="C1, Autos pequeños de servicio público.";
							7:
								curso1="C2, Autos grandes de servicio público.";
							8:
								curso1="C3, Vehículos articulados de servicio público.";
								
							De Otro Modo:
								menu2=9;
						FinSegun
						
					Hasta Que menu2<>9;
					
					Repetir
						
						Escribir "Teclee una opción para definir el estado de finalización del curso y aprobación de la prueba final: ";
						Escribir "1. Terminado";
						Escribir "2. No terminado";
						Leer menu2;
						
						Segun menu2 Hacer
							
							1: 
								aprobado1=Verdadero;
							2: 
								aprobado1=Falso;
								
							De Otro Modo:
								menu2=0;
							
						FinSegun
						
					Hasta Que menu2<>0
					
					
				SiNo
					
					Si nombreUsuario2=="" Entonces
						
						Escribir "Ingrese el nombre del cliente:";
						Leer nombreUsuario2;
						Escribir "Ingrese la identificación del cliente:";
						Leer cedulaUsuario2;
						
						Repetir
							
							Escribir "Teclee una opción del curso realizado: ";
							Escribir "1. A1, Motos de bajo cilindraje.";
							Escribir "2. A2, Motos de alto cilindraje.";
							Escribir "3. B1, Autos particulares.";
							Escribir "4. B2, Camiones y buses de uso particular.";
							Escribir "5. B3, Vehículos articulados particulares.";
							Escribir "6. C1, Autos pequeños de servicio público.";
							Escribir "7. C2, Autos grandes de servicio público.";
							Escribir "8. C3, Vehículos articulados de servicio público.";
							Leer menu2;
							
						Hasta Que menu2>=1 y menu2<= 8
						
						Repetir
							
							Segun menu2 Hacer
								
								1:
									curso2="A1, Motos de bajo cilindraje.";
								2:
									curso2="A2, Motos de alto cilindraje.";
								3:
									curso2="B1, Autos particulares.";
								4:
									curso2="B2, Camiones y buses de uso particular.";
								5:
									curso2="B3, Vehículos articulados particulares.";
								6:
									curso2="C1, Autos pequeños de servicio público.";
								7:
									curso2="C2, Autos grandes de servicio público.";
								8:
									curso2="C3, Vehículos articulados de servicio público.";
									
								De Otro Modo:
									menu2=9;
							FinSegun
							
							Hasta Que menu2<>9;
							
							Repetir
							
								Escribir "Teclee una opción para definir el estado de finalización del curso y aprobación de la prueba final: ";
								Escribir "1. Terminado";
								Escribir "2. No terminado";
								Leer menu2;
							
								Segun menu2 Hacer
								
									1: 
										aprobado2=Verdadero;
									2: 
										aprobado2=Falso;
										
									De Otro Modo:
										menu2=0;
									
								FinSegun
							
							Hasta Que menu2<>0
						
						SiNo
							
							Si nombreUsuario3=="" Entonces
								
								Escribir "Ingrese el nombre del cliente:";
								Leer nombreUsuario3;
								Escribir "Ingrese la identificación del cliente:";
								Leer cedulaUsuario3;
								
								Repetir
									
									Escribir "Teclee una opción del curso realizado: ";
									Escribir "1. A1, Motos de bajo cilindraje.";
									Escribir "2. A2, Motos de alto cilindraje.";
									Escribir "3. B1, Autos particulares.";
									Escribir "4. B2, Camiones y buses de uso particular.";
									Escribir "5. B3, Vehículos articulados particulares.";
									Escribir "6. C1, Autos pequeños de servicio público.";
									Escribir "7. C2, Autos grandes de servicio público.";
									Escribir "8. C3, Vehículos articulados de servicio público.";
									Leer menu2;
									
								Hasta Que menu2>=1 y menu2<= 8
								
								Repetir
									
									Segun menu2 Hacer
										
										1:
											curso3="A1, Motos de bajo cilindraje.";
										2:
											curso3="A2, Motos de alto cilindraje.";
										3:
											curso3="B1, Autos particulares.";
										4:
											curso3="B2, Camiones y buses de uso particular.";
										5:
											curso3="B3, Vehículos articulados particulares.";
										6:
											curso3="C1, Autos pequeños de servicio público.";
										7:
											curso3="C2, Autos grandes de servicio público.";
										8:
											curso3="C3, Vehículos articulados de servicio público.";
											
										De Otro Modo:
											menu2=9;
									FinSegun
									
								Hasta Que menu2<>9;
								
								Repetir
									
									Escribir "Teclee una opción para definir el estado de finalización del curso y aprobación de la prueba final: ";
									Escribir "1. Terminado";
									Escribir "2. No terminado";
									Leer menu2;
									
									Segun menu2 Hacer
										
										1: 
											aprobado3=Verdadero;
										2: 
											aprobado3=Falso;
											
										De Otro Modo:
											menu2=0;
											
									FinSegun
									
								Hasta Que menu2<>0
								
							SiNo
								
								Si nombreUsuario4=="" Entonces
									
									Escribir "Ingrese el nombre del cliente:";
									Leer nombreUsuario4;
									Escribir "Ingrese la identificación del cliente:";
									Leer cedulaUsuario4;
									
									Repetir
										
										Escribir "Teclee una opción del curso realizado: ";
										Escribir "1. A1, Motos de bajo cilindraje.";
										Escribir "2. A2, Motos de alto cilindraje.";
										Escribir "3. B1, Autos particulares.";
										Escribir "4. B2, Camiones y buses de uso particular.";
										Escribir "5. B3, Vehículos articulados particulares.";
										Escribir "6. C1, Autos pequeños de servicio público.";
										Escribir "7. C2, Autos grandes de servicio público.";
										Escribir "8. C3, Vehículos articulados de servicio público.";
										Leer menu2;
										
									Hasta Que menu2>=1 y menu2<= 8
									
									Repetir
										
										Segun menu2 Hacer
											
											1:
												curso4="A1, Motos de bajo cilindraje.";
											2:
												curso4="A2, Motos de alto cilindraje.";
											3:
												curso4="B1, Autos particulares.";
											4:
												curso4="B2, Camiones y buses de uso particular.";
											5:
												curso4="B3, Vehículos articulados particulares.";
											6:
												curso4="C1, Autos pequeños de servicio público.";
											7:
												curso4="C2, Autos grandes de servicio público.";
											8:
												curso4="C3, Vehículos articulados de servicio público.";
												
											De Otro Modo:
												menu2=9;
										FinSegun
										
									Hasta Que menu2<>9;
									
									Repetir
										
										Escribir "Teclee una opción para definir el estado de finalización del curso y aprobación de la prueba final: ";
										Escribir "1. Terminado";
										Escribir "2. No terminado";
										Leer menu2;
										
										Segun menu2 Hacer
											
											1: 
												aprobado4=Verdadero;
											2: 
												aprobado4=Falso;
												
											De Otro Modo:
												menu2=0;
												
										FinSegun
										
									Hasta Que menu2<>0
									
									
								SiNo
									
									Si nombreUsuario5=="" Entonces
										
										Escribir "Ingrese el nombre del cliente:";
										Leer nombreUsuario5;
										Escribir "Ingrese la identificación del cliente:";
										Leer cedulaUsuario5;
										
										Repetir
											
											Escribir "Teclee una opción del curso realizado: ";
											Escribir "1. A1, Motos de bajo cilindraje.";
											Escribir "2. A2, Motos de alto cilindraje.";
											Escribir "3. B1, Autos particulares.";
											Escribir "4. B2, Camiones y buses de uso particular.";
											Escribir "5. B3, Vehículos articulados particulares.";
											Escribir "6. C1, Autos pequeños de servicio público.";
											Escribir "7. C2, Autos grandes de servicio público.";
											Escribir "8. C3, Vehículos articulados de servicio público.";
											Leer menu2;
											
										Hasta Que menu2>=1 y menu2<= 8
										
										Repetir
											
											Segun menu2 Hacer
												
												1:
													curso5="A1, Motos de bajo cilindraje.";
												2:
													curso5="A2, Motos de alto cilindraje.";
												3:
													curso5="B1, Autos particulares.";
												4:
													curso5="B2, Camiones y buses de uso particular.";
												5:
													curso5="B3, Vehículos articulados particulares.";
												6:
													curso5="C1, Autos pequeños de servicio público.";
												7:
													curso5="C2, Autos grandes de servicio público.";
												8:
													curso5="C3, Vehículos articulados de servicio público.";
													
												De Otro Modo:
													menu2=9;
											FinSegun
											
										Hasta Que menu2<>9;
										
										Repetir
											
											Escribir "Teclee una opción para definir el estado de finalización del curso y aprobación de la prueba final: ";
											Escribir "1. Terminado";
											Escribir "2. No terminado";
											Leer menu2;
											
											Segun menu2 Hacer
												
												1: 
													aprobado5=Verdadero;
												2: 
													aprobado5=Falso;
													
												De Otro Modo:
													menu2=0;
													
											FinSegun
											
										Hasta Que menu2<>0
										
									SiNo
										
										Si nombreUsuario6=="" Entonces
											
											Escribir "Ingrese el nombre del cliente:";
											Leer nombreUsuario6;
											Escribir "Ingrese la identificación del cliente:";
											Leer cedulaUsuario6;
											
											Repetir
												
												Escribir "Teclee una opción del curso realizado: ";
												Escribir "1. A1, Motos de bajo cilindraje.";
												Escribir "2. A2, Motos de alto cilindraje.";
												Escribir "3. B1, Autos particulares.";
												Escribir "4. B2, Camiones y buses de uso particular.";
												Escribir "5. B3, Vehículos articulados particulares.";
												Escribir "6. C1, Autos pequeños de servicio público.";
												Escribir "7. C2, Autos grandes de servicio público.";
												Escribir "8. C3, Vehículos articulados de servicio público.";
												Leer menu2;
												
											Hasta Que menu2>=1 y menu2<= 8
											
											Repetir
												
												Segun menu2 Hacer
													
													1:
														curso6="A1, Motos de bajo cilindraje.";
													2:
														curso6="A2, Motos de alto cilindraje.";
													3:
														curso6="B1, Autos particulares.";
													4:
														curso6="B2, Camiones y buses de uso particular.";
													5:
														curso6="B3, Vehículos articulados particulares.";
													6:
														curso6="C1, Autos pequeños de servicio público.";
													7:
														curso6="C2, Autos grandes de servicio público.";
													8:
														curso6="C3, Vehículos articulados de servicio público.";
														
													De Otro Modo:
														menu2=9;
												FinSegun
												
											Hasta Que menu2<>9;
											
											Repetir
												
												Escribir "Teclee una opción para definir el estado de finalización del curso y aprobación de la prueba final: ";
												Escribir "1. Terminado";
												Escribir "2. No terminado";
												Leer menu2;
												
												Segun menu2 Hacer
													
													1: 
														aprobado6=Verdadero;
													2: 
														aprobado6=Falso;
														
													De Otro Modo:
														menu2=0;
														
												FinSegun
												
											Hasta Que menu2<>0
											
										SiNo
											
											Si nombreUsuario7=="" Entonces
												
												Escribir "Ingrese el nombre del cliente:";
												Leer nombreUsuario7;
												Escribir "Ingrese la identificación del cliente:";
												Leer cedulaUsuario7;
												
												Repetir
													
													Escribir "Teclee una opción del curso realizado: ";
													Escribir "1. A1, Motos de bajo cilindraje.";
													Escribir "2. A2, Motos de alto cilindraje.";
													Escribir "3. B1, Autos particulares.";
													Escribir "4. B2, Camiones y buses de uso particular.";
													Escribir "5. B3, Vehículos articulados particulares.";
													Escribir "6. C1, Autos pequeños de servicio público.";
													Escribir "7. C2, Autos grandes de servicio público.";
													Escribir "8. C3, Vehículos articulados de servicio público.";
													Leer menu2;
													
												Hasta Que menu2>=1 y menu2<= 8
												
												Repetir
													
													Segun menu2 Hacer
														
														1:
															curso7="A1, Motos de bajo cilindraje.";
														2:
															curso7="A2, Motos de alto cilindraje.";
														3:
															curso7="B1, Autos particulares.";
														4:
															curso7="B2, Camiones y buses de uso particular.";
														5:
															curso7="B3, Vehículos articulados particulares.";
														6:
															curso7="C1, Autos pequeños de servicio público.";
														7:
															curso7="C2, Autos grandes de servicio público.";
														8:
															curso7="C3, Vehículos articulados de servicio público.";
															
														De Otro Modo:
															menu2=9;
													FinSegun
													
												Hasta Que menu2<>9;
												
												Repetir
													
													Escribir "Teclee una opción para definir el estado de finalización del curso y aprobación de la prueba final: ";
													Escribir "1. Terminado";
													Escribir "2. No terminado";
													Leer menu2;
													
													Segun menu2 Hacer
														
														1: 
															aprobado7=Verdadero;
														2: 
															aprobado7=Falso;
															
														De Otro Modo:
															menu2=0;
															
													FinSegun
													
												Hasta Que menu2<>0
												
											SiNo
												
												Si nombreUsuario8=="" Entonces
													
													Escribir "Ingrese el nombre del cliente:";
													Leer nombreUsuario8;
													Escribir "Ingrese la identificación del cliente:";
													Leer cedulaUsuario8;
													
													Repetir
														
														Escribir "Teclee una opción del curso realizado: ";
														Escribir "1. A1, Motos de bajo cilindraje.";
														Escribir "2. A2, Motos de alto cilindraje.";
														Escribir "3. B1, Autos particulares.";
														Escribir "4. B2, Camiones y buses de uso particular.";
														Escribir "5. B3, Vehículos articulados particulares.";
														Escribir "6. C1, Autos pequeños de servicio público.";
														Escribir "7. C2, Autos grandes de servicio público.";
														Escribir "8. C3, Vehículos articulados de servicio público.";
														Leer menu2;
														
													Hasta Que menu2>=1 y menu2<= 8
													
													Repetir
														
														Segun menu2 Hacer
															
															1:
																curso8="A1, Motos de bajo cilindraje.";
															2:
																curso8="A2, Motos de alto cilindraje.";
															3:
																curso8="B1, Autos particulares.";
															4:
																curso8="B2, Camiones y buses de uso particular.";
															5:
																curso8="B3, Vehículos articulados particulares.";
															6:
																curso8="C1, Autos pequeños de servicio público.";
															7:
																curso8="C2, Autos grandes de servicio público.";
															8:
																curso8="C3, Vehículos articulados de servicio público.";
																
															De Otro Modo:
																menu2=9;
														FinSegun
														
													Hasta Que menu2<>9;
													
													Repetir
														
														Escribir "Teclee una opción para definir el estado de finalización del curso y aprobación de la prueba final: ";
														Escribir "1. Terminado";
														Escribir "2. No terminado";
														Leer menu2;
														
														Segun menu2 Hacer
															
															1: 
																aprobado8=Verdadero;
															2: 
																aprobado8=Falso;
																
															De Otro Modo:
																menu2=0;
																
														FinSegun
														
													Hasta Que menu2<>0
													
												SiNo
													
													Escribir "Actualmente no tenemos inscripciones disponibles.";
													
											FinSi
												
										FinSi
											
									FinSi
										
								FinSi
									
							FinSi
								
						FinSi
							
					FinSi
					
				FinSi
				
			2:
				Escribir "Consultar usuarios registrados.";
				
				Si nombreUsuario1=="" y nombreUsuario2=="" y nombreUsuario3=="" y nombreUsuario4=="" y nombreUsuario5=="" y nombreUsuario6=="" y nombreUsuario7=="" y nombreUsuario8=="" Entonces
					
					Escribir "Aún no tenemos usuarios inscritos.";
					
				SiNo
					
					Si nombreUsuario1<>"" Entonces
						
						Escribir nombreUsuario1;
						Escribir "Curso: ", curso1;
						
						Si aprobado1==Verdadero Entonces
							
							Escribir "Estado: Aprobado";
							
						SiNo
							
							Escribir "Estado: No Aprobado";
							
						FinSi
						
					FinSi
					
					Si nombreUsuario2<>"" Entonces
						
						Escribir nombreUsuario2;
						Escribir "Curso: ", curso2;
						
						Si aprobado2==Verdadero Entonces
							
							Escribir "Estado: Aprobado";
							
						SiNo
							
							Escribir "Estado: No Aprobado";
							
						FinSi
						
					FinSi
					
					Si nombreUsuario3<>"" Entonces
						
						Escribir nombreUsuario3;
						
						Escribir "Curso: ", curso3;
						
						Si aprobado3==Verdadero Entonces
							
							Escribir "Estado: Aprobado";
							
						SiNo
							
							Escribir "Estado: No Aprobado";
							
						FinSi
						
					FinSi
					
					Si nombreUsuario4<>"" Entonces
						
						Escribir nombreUsuario4;
						Escribir "Curso: ", curso4;
						
						Si aprobado4==Verdadero Entonces
							
							Escribir "Estado: Aprobado";
							
						SiNo
							
							Escribir "Estado: No Aprobado";
							
						FinSi
						
					FinSi
					
					Si nombreUsuario5<>"" Entonces
						
						Escribir nombreUsuario5;
						Escribir "Curso: ", curso5;
						
						Si aprobado5==Verdadero Entonces
							
							Escribir "Estado: Aprobado";
							
						SiNo
							
							Escribir "Estado: No Aprobado";
							
						FinSi
						
					FinSi
					
					Si nombreUsuario6<>"" Entonces
						
						Escribir nombreUsuario6;
						Escribir "Curso: ", curso6;
						
						Si aprobado6==Verdadero Entonces
							
							Escribir "Estado: Aprobado";
							
						SiNo
							
							Escribir "Estado: No Aprobado";
							
						FinSi
						
					FinSi
					
					Si nombreUsuario7<>"" Entonces
						
						Escribir nombreUsuario7;
						Escribir "Curso: ", curso7;
						
						Si aprobado7==Verdadero Entonces
							
							Escribir "Estado: Aprobado";
							
						SiNo
							
							Escribir "Estado: No Aprobado";
							
						FinSi
						
					FinSi
					
					Si nombreUsuario8<>"" Entonces
						
						Escribir nombreUsuario8;
						Escribir "Curso: ", curso8;
						
						Si aprobado8==Verdadero Entonces
							
							Escribir "Estado: Aprobado";
							
						SiNo
							
							Escribir "Estado: No Aprobado";
							
						FinSi
						
					FinSi
					
				FinSi
				
			3:
				
				Escribir "Cambiar estado resultados prueba";
				Escribir "Ingrese el documento del usuario: ";
				Leer cedulaCambio;
				
				Si cedulaCambio<>cedulaUsuario1 y  cedulaCambio<>cedulaUsuario2 y  cedulaCambio<>cedulaUsuario3 y  cedulaCambio<>cedulaUsuario4 y  cedulaCambio<>cedulaUsuario5  y  cedulaCambio<>cedulaUsuario6 y  cedulaCambio<>cedulaUsuario7 y  cedulaCambio<>cedulaUsuario8 Entonces
					
					Escribir "La cédula que proporcionaste no coincide con ningún usuario registrado.";
					
				SiNo
					
					Si cedulaCambio=cedulaUsuario1 Entonces
						
						Escribir "El estado actual es: ";
						
						Si aprobado1==Verdadero Entonces
							
							Escribir "Estado: Aprobado";
							
						SiNo
							
							Escribir "Estado: No Aprobado";
							
						FinSi
						Escribir "¿Desea cambiarlo?";
						Escribir "1. Sí";
						Escribir "2. No";
						Leer menu2;
						
						Si menu2==1 Entonces
							
							aprobado1=!aprobado1;
							
						FinSi
						
					SiNo
						
						Si cedulaCambio=cedulaUsuario2 Entonces
							
							Escribir "El estado actual es: ";
							
							Si aprobado2==Verdadero Entonces
								
								Escribir "Estado: Aprobado";
								
							SiNo
								
								Escribir "Estado: No Aprobado";
								
							FinSi
							Escribir "¿Desea cambiarlo?";
							Escribir "1. Sí";
							Escribir "2. No";
							Leer menu2;
							
							Si menu2==1 Entonces
								
								aprobado2=!aprobado2;
								
							FinSi
							
						SiNo
							
							Si cedulaCambio=cedulaUsuario3 Entonces
								
								Escribir "El estado actual es: ";
								
								Si aprobado3==Verdadero Entonces
									
									Escribir "Estado: Aprobado";
									
								SiNo
									
									Escribir "Estado: No Aprobado";
									
								FinSi
								Escribir "¿Desea cambiarlo?";
								Escribir "1. Sí";
								Escribir "2. No";
								Leer menu2;
								
								Si menu2==1 Entonces
									
									aprobado3=!aprobado3;
									
								FinSi
								
							SiNo
								
								Si cedulaCambio=cedulaUsuario4 Entonces
									
									Escribir "El estado actual es: ";
									
									Si aprobado4==Verdadero Entonces
										
										Escribir "Estado: Aprobado";
										
									SiNo
										
										Escribir "Estado: No Aprobado";
										
									FinSi
									Escribir "¿Desea cambiarlo?";
									Escribir "1. Sí";
									Escribir "2. No";
									Leer menu2;
									
									Si menu2==1 Entonces
										
										aprobado4=!aprobado4;
										
									FinSi
									
								SiNo
									
									Si cedulaCambio=cedulaUsuario5 Entonces
										
										Escribir "El estado actual es: ";
										
										Si aprobado5==Verdadero Entonces
											
											Escribir "Estado: Aprobado";
											
										SiNo
											
											Escribir "Estado: No Aprobado";
											
										FinSi
										Escribir "¿Desea cambiarlo?";
										Escribir "1. Sí";
										Escribir "2. No";
										Leer menu2;
										
										Si menu2==1 Entonces
											
											aprobado5=!aprobado5;
											
										FinSi
										
									SiNo
										
										Si cedulaCambio=cedulaUsuario6 Entonces
											
											Escribir "El estado actual es: ";
											
											Si aprobado6==Verdadero Entonces
												
												Escribir "Estado: Aprobado";
												
											SiNo
												
												Escribir "Estado: No Aprobado";
												
											FinSi
											Escribir "¿Desea cambiarlo?";
											Escribir "1. Sí";
											Escribir "2. No";
											Leer menu2;
											
											Si menu2==1 Entonces
												
												aprobado6=!aprobado6;
												
											FinSi
											
										SiNo
											
											Si cedulaCambio=cedulaUsuario7 Entonces
												
												Escribir "El estado actual es: ";
												
												Si aprobado7==Verdadero Entonces
													
													Escribir "Estado: Aprobado";
													
												SiNo
													
													Escribir "Estado: No Aprobado";
													
												FinSi
												Escribir "¿Desea cambiarlo?";
												Escribir "1. Sí";
												Escribir "2. No";
												Leer menu2;
												
												Si menu2==1 Entonces
													
													aprobado7=!aprobado7;
													
												FinSi
												
											SiNo
												
												Si cedulaCambio=cedulaUsuario8 Entonces
													
													Escribir "El estado actual es: ";
													
													Si aprobado8==Verdadero Entonces
														
														Escribir "Estado: Aprobado";
														
													SiNo
														
														Escribir "Estado: No Aprobado";
														
													FinSi
													Escribir "¿Desea cambiarlo?";
													Escribir "1. Sí";
													Escribir "2. No";
													Leer menu2;
													
													Si menu2==1 Entonces
														
														aprobado8=!aprobado8;
														
													FinSi
													
												SiNo
													
													
													
												FinSi
												
											FinSi
											
										FinSi
										
									FinSi
									
								FinSi
								
							FinSi
							
						FinSi
						
					FinSi
					
				FinSi
				
			
			De Otro Modo:
				menu1=4;
			
		FinSegun
		
	Hasta Que menu1==4
	
FinProceso