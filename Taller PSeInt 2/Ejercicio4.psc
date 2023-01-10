//La video tienda que presta sus servicios de alquiler de pel�culas
//a los usuarios del barrio el Porvenir, requiere de una aplicaci�n
//que permita registrar el alquiler de las pel�culas que adquieren
//sus usuarios. Para cada usuario se debe permitir la opci�n de
//alquilar pel�cula, consultar pel�culas disponibles y recibir
//pel�cula en la video tienda con la opci�n de realizar anotaciones
//sobre estas si se llegan a presentar da�os u otra novedad sobre la pel�cula.

Proceso Ejercicio4
	
	Definir nombreUsuario Como Caracter;
	Definir peliculaAlquiler Como Caracter;
	Definir arregloPeliculas Como Caracter;
	Definir a Como Entero;
	a=0;
	
	Definir peliculaEntrega Como Caracter;
	Definir detalle Como Caracter;
	
	Dimension arregloPeliculas[5];
	arregloPeliculas[0] = "Big Fish: Tim Burton";
	arregloPeliculas[1] = "The Green Mile";
	arregloPeliculas[2] = "Cosmos: A Spacetime Odyssey";
	arregloPeliculas[3] = "E.T., el extraterrestre";
	arregloPeliculas[4] = "youtube.com/watch?v=Ybp9NsmTA2o";
	
	Definir menu1 Como Entero;
	
	Escribir "Tienda de v�deo el TERNERO MIMOSO";
	Escribir "";
	Escribir "Ingrese su usuario: ";
	leer nombreUsuario;
		
		Escribir "Tienda de v�deo el TERNERO MIMOSO";
		Escribir "";
		Escribir "----------------MEN�-------------";
		Escribir "1. Alquilar pel�cula.";
		Escribir "2. Consultar pel�culas.";
		Escribir "3. Entregar pel�cula.";
		Escribir "Ingrese su elecci�n:";
		Leer menu1;
		
		Escribir "---------------------------------------------------";
		
		Si menu1==1 Entonces
		
			//Aqu� no valid� nada puesto que solo est�n revisando el correcto uso de los if
			Escribir "Nombre de la pel�cula a alquilar: ";
			leer peliculaAlquiler;
			
			Escribir "�Muy buena elecci�n!";
			Escribir "�Tambi�n nos encanta esa!";
		
		FinSi
		
		Si menu1==2 Entonces
		
			Escribir "Estas son las pel�culas que tenemos disponibles: ";
			
			
			Repetir
				
				Escribir arregloPeliculas[a];
				a = a+1;
				
			Hasta Que a>=5;
			
		FinSi
		
		Si menu1==3 Entonces
		
			Escribir "Digita el nombre de la pel�cula a entregar: "; 
			leer peliculaEntrega;
			
			Escribir "Digita cualquier imperfecto que presente la pel�cula. Si no tiene ninguna novedad escribe: No aplica:";
			Escribir "Detalle: ";
			Leer detalle;
		FinSi
		
		Si menu1>3 o menu1<0 Entonces
			
			Escribir "No elegiste una opci�n v�lida";
			
		FinSi
		
		Escribir "---------------------------------------------------";
		
		
	
FinProceso