//Utilizando el ciclo que usted desee,
//crear un men� de ejecuci�n infinita hasta
//que el usuario desee terminar dicho ciclo.

Proceso Ejercicio5
	
	Definir nombre Como Caracter;
	Definir menu1 Como Entero;
	
	nombre = "NaN";
	
	Repetir 
		
		Escribir "Men� de usuario";
		Escribir "1. Captura de nombre";
		Escribir "2. Saludar Persona";
		Escribir "3. Salir del sistema";
		Escribir "Opci�n elegida: ";
		Leer menu1;
		
		Limpiar Pantalla;
		
		Segun menu1 Hacer
			
			1: 
				Escribir "Ingresa tu nombre";
				Leer nombre;
				
			2:
				Escribir "�Hola! ",nombre;
				
			3:
				Escribir "Saliendo del sistema...";
				
			De Otro Modo:
				Escribir "No elegiste una opci�n v�lida";
		FinSegun
		
	Hasta Que menu1==3;
	
FinProceso