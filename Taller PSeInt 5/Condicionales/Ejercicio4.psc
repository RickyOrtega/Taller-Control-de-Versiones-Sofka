//La video tienda que presta sus servicios de alquiler de pel�culas
//a los usuarios del barrio el Porvenir, requiere de una aplicaci�n
//que permita registrar el alquiler de las pel�culas que adquieren
//sus usuarios. Para cada usuario se debe permitir la opci�n de
//alquilar pel�cula, consultar pel�culas disponibles y recibir
//pel�cula en la video tienda con la opci�n de realizar anotaciones
//sobre estas si se llegan a presentar da�os u otra novedad sobre la pel�cula.

SubProceso peliculaAlquiler=alquilarPelicula()
	
	Definir peliculaAlquiler Como Caracter;
	
	//Aqu� no valid� nada puesto que solo est�n revisando el correcto uso de los if
	Escribir "Nombre de la pel�cula a alquilar: ";
	leer peliculaAlquiler;
	
	Escribir "�Muy buena elecci�n!";
	Escribir "�Tambi�n nos encanta esa!";
	
FinSubProceso

SubProceso consultarPeliculas()
	Definir arregloPeliculas Como Caracter;
	Dimension arregloPeliculas[5];
	Definir a Como Entero;
	a=0;
	
	arregloPeliculas[0] = "Big Fish: Tim Burton";
	arregloPeliculas[1] = "The Green Mile";
	arregloPeliculas[2] = "Cosmos: A Spacetime Odyssey";
	arregloPeliculas[3] = "E.T., el extraterrestre";
	arregloPeliculas[4] = "youtube.com/watch?v=Ybp9NsmTA2o";
	
	Escribir "Estas son las pel�culas que tenemos disponibles: ";
	
	Repetir
		
		Escribir arregloPeliculas[a];
		a = a+1;
		
	Hasta Que a>=5;
	
FinSubProceso

SubProceso entregarPelicula()
	
	Definir peliculaEntrega Como Caracter;
	Definir detalle Como Caracter;
	
	Escribir "Digita el nombre de la pel�cula a entregar: "; 
	leer peliculaEntrega;
	
	Escribir "Digita cualquier imperfecto que presente la pel�cula. Si no tiene ninguna novedad escribe: No aplica:";
	Escribir "Detalle: ";
	Leer detalle;
	
FinSubProceso

Proceso Ejercicio4
	
	Definir nombreUsuario Como Caracter;
	Definir peliculaAlquiler Como Caracter;
	
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
		
			peliculaAlquiler=alquilarPelicula();
		
		FinSi
		
		Si menu1==2 Entonces
		
			consultarPeliculas();
			
		FinSi
		
		Si menu1==3 Entonces
		
			entregarPelicula();
			
		FinSi
		
		Si menu1>3 o menu1<0 Entonces
			
			Escribir "No elegiste una opci�n v�lida";
			
		FinSi
		
		Escribir "---------------------------------------------------";
		
		
	
FinProceso