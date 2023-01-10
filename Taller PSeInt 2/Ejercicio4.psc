//La video tienda que presta sus servicios de alquiler de películas
//a los usuarios del barrio el Porvenir, requiere de una aplicación
//que permita registrar el alquiler de las películas que adquieren
//sus usuarios. Para cada usuario se debe permitir la opción de
//alquilar película, consultar películas disponibles y recibir
//película en la video tienda con la opción de realizar anotaciones
//sobre estas si se llegan a presentar daños u otra novedad sobre la película.

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
	
	Escribir "Tienda de vídeo el TERNERO MIMOSO";
	Escribir "";
	Escribir "Ingrese su usuario: ";
	leer nombreUsuario;
		
		Escribir "Tienda de vídeo el TERNERO MIMOSO";
		Escribir "";
		Escribir "----------------MENÚ-------------";
		Escribir "1. Alquilar película.";
		Escribir "2. Consultar películas.";
		Escribir "3. Entregar película.";
		Escribir "Ingrese su elección:";
		Leer menu1;
		
		Escribir "---------------------------------------------------";
		
		Si menu1==1 Entonces
		
			//Aquí no validé nada puesto que solo están revisando el correcto uso de los if
			Escribir "Nombre de la película a alquilar: ";
			leer peliculaAlquiler;
			
			Escribir "¡Muy buena elección!";
			Escribir "¡También nos encanta esa!";
		
		FinSi
		
		Si menu1==2 Entonces
		
			Escribir "Estas son las películas que tenemos disponibles: ";
			
			
			Repetir
				
				Escribir arregloPeliculas[a];
				a = a+1;
				
			Hasta Que a>=5;
			
		FinSi
		
		Si menu1==3 Entonces
		
			Escribir "Digita el nombre de la película a entregar: "; 
			leer peliculaEntrega;
			
			Escribir "Digita cualquier imperfecto que presente la película. Si no tiene ninguna novedad escribe: No aplica:";
			Escribir "Detalle: ";
			Leer detalle;
		FinSi
		
		Si menu1>3 o menu1<0 Entonces
			
			Escribir "No elegiste una opción válida";
			
		FinSi
		
		Escribir "---------------------------------------------------";
		
		
	
FinProceso