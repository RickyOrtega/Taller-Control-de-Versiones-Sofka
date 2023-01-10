//Realizar un programa en el cual se solicite la edad de una persona.
//Si la persona es menor a 18 años, deberá mostrar en pantalla:
//Usted aún es un niño(a).

SubProceso evaluarEdad(edad)
	
	Si edad<18 Entonces
		
		Escribir "Usted aún es un niño.";
		
	FinSi
	
FinSubProceso

Proceso Ejercicio1
	Definir edad Como Entero;
	
	Escribir "Ingrese su edad: ";
	Leer edad;
	
	evaluarEdad(edad);
	
FinProceso