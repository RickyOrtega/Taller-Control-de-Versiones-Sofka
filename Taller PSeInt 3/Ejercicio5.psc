//Utilizando el ciclo que usted desee,
//crear un menú de ejecución infinita hasta
//que el usuario desee terminar dicho ciclo.

Proceso Ejercicio5
	
	Definir nombre Como Caracter;
	Definir menu1 Como Entero;
	
	nombre = "NaN";
	
	Repetir 
		
		Escribir "Menú de usuario";
		Escribir "1. Captura de nombre";
		Escribir "2. Saludar Persona";
		Escribir "3. Salir del sistema";
		Escribir "Opción elegida: ";
		Leer menu1;
		
		Limpiar Pantalla;
		
		Segun menu1 Hacer
			
			1: 
				Escribir "Ingresa tu nombre";
				Leer nombre;
				
			2:
				Escribir "¡Hola! ",nombre;
				
			3:
				Escribir "Saliendo del sistema...";
				
			De Otro Modo:
				Escribir "No elegiste una opción válida";
		FinSegun
		
	Hasta Que menu1==3;
	
FinProceso