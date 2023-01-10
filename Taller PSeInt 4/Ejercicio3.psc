//Imprimir los números primos del 1 al 1000,
//el resultado debe ser buscado de forma matemática.

//Comprobaré si al evaluar el módulo con los primeros números
//naturales {2,3,4,5,6,7,8,9} da algo diferente a 0

Proceso Ejercicio3
	
	//Variable iteradora
	Definir i Como Entero;
	Definir x Como Entero;
	
	Definir primos Como Caracter;
	primos="Números primos: ";
	
	Definir mitad Como Real;
	
	Definir contador Como Entero;

	
	Para i=2 Hasta 1000 Con Paso 1 Hacer
		
		contador=0;
		
		Para x=1 Hasta i Con Paso 1 Hacer
			
			Si i MOD x == 0  Entonces
				
				contador=contador+1;
				
			FinSi
			
		FinPara
		
		Si contador==2 Entonces
			
			primos=Concatenar(primos,ConvertirATexto(i));
			primos=Concatenar(primos, ", ");
			
		FinSi
		
	FinPara
	
	Escribir primos;
	
FinProceso