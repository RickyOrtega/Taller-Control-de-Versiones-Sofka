//Realizar un programa en el cual se solicite la edad de una persona.
//Si la persona es mayor o igual a 18 a�os, deber� mostrar en pantalla: Usted es mayor de edad.


SubProceso evaluarEdad(edad)
	
	Si edad>=18 Entonces
		
		Escribir "Usted es mayor de edad.";
		
	FinSi
	
FinSubProceso

Proceso Ejercicio1
	Definir edad Como Entero;
	
	Escribir "Ingrese su edad: ";
	Leer edad;
	
	evaluarEdad(edad);
	
FinProceso