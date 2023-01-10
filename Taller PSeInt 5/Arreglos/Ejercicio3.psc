//Imprimir los números primos del 1 al 1000,
//el resultado debe ser buscado de forma matemática.

SubProceso cadena=definirCadena(cadena, i)
	
	cadena=Concatenar(cadena,ConvertirATexto(i));
	cadena=Concatenar(cadena, ", ");
	
FinSubProceso

SubProceso primos=primo(primos, i)
	Definir x Como Entero;
	Definir contador Como Entero;
	
	contador=0;
	
	Para x=1 Hasta i Con Paso 1 Hacer
		
		Si i MOD x == 0  Entonces
			
			contador=contador+1;
			
		FinSi
		
	FinPara
	
	Si contador==2 Entonces
		
		primos=definirCadena(primos,i);
		
	FinSi
	
FinSubProceso

Proceso Ejercicio3
	
	//Variable iteradora
	Definir i Como Entero;

	Definir primos Como Caracter;
	primos="Números primos: ";
	
	Para i=2 Hasta 1000 Con Paso 1 Hacer
		
		primos=primo(primos, i);
		
	FinPara
	
	Escribir primos;
	
FinProceso