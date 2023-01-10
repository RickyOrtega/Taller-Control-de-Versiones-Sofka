//Realizar un programa el cual solicite su nombre y apellidos,
//también debe capturar nombre y apellidos de su padre y madre.
//Al finalizar debe imprimir en pantalla el siguiente mensaje 
//"Yo [Nombre Completo], soy hijo de [Nombre de la Madre] y [Nombre del Padre].

Proceso Ejercicio3
	
	Definir nombreCompleto Como Caracter;
	Definir nombreMadre Como Caracter;
	Definir nombrePadre Como Caracter;

	Escribir "Ingrese su nombre completo: ";
	Leer nombreCompleto;
	Escribir "Ingrese el nombre de su madre: ";
	Leer nombreMadre;
	Escribir "Ingrese el nombre de su padre: ";
	Leer nombrePadre;
	
	Escribir "Yo ", nombreCompleto, " soy hijo de ", nombreMadre, " y ", nombrePadre;
	
FinProceso