//Realizar un programa en el cual se solicite la edad de una persona.
//Si la persona es menor a 18 a�os, deber� mostrar en pantalla:
//Usted a�n es un ni�o(a).

SubProceso evaluarEdad(edad)
	
	Si edad<18 Entonces
		
		Escribir "Usted a�n es un ni�o.";
		
	FinSi
	
FinSubProceso

Proceso Ejercicio1
	Definir edad Como Entero;
	
	Escribir "Ingrese su edad: ";
	Leer edad;
	
	evaluarEdad(edad);
	
FinProceso