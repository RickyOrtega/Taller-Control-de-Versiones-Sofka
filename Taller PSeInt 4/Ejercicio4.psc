//Dada la siguiente matriz bidimensional, el cual debe de quemar en el código

//>>01 02 03 04 05
//>>06 07 08 09 10
//>>11 12 13 14 15
//>>16 17 18 19 20

//Utilizando el conocimiento adquirido, a excepción de hacerlo de forma manual, imprima la siguiente matriz bidimensional

//>>01 02 03 04 05
//>>10 09 08 07 06
//>>11 12 13 14 15
//>>20 19 18 17 16

Proceso Ejercicio4
	
	Definir matriz Como Entero;
	
	Dimension matriz[4,5];
	
	Definir i Como Entero;
	Definir j Como Entero;
	
	Definir numeroActual Como Entero;
	numeroActual=01;
	
	Para i=0 Hasta 3 Hacer
		
		Si i MOD 2<>0 Entonces
			
			Para j=4 Hasta 0 Con Paso -1 Hacer
				
				matriz[i,j]=numeroActual;
				
				numeroActual=numeroActual+1;
				
			FinPara
			
		SiNo
			
			Para j=0 Hasta 4 Con Paso 1 Hacer
				
				matriz[i,j]=numeroActual;
				
				numeroActual=numeroActual+1;
				
			FinPara
			
		FinSi
		
	FinPara
	
	Para i=0 Hasta 3 Hacer
		
		Para j=0 Hasta 4 Hacer
			
			Si matriz[i,j]<10 Entonces
				
				Escribir "0", Sin Saltar;
				
			FinSi
			
			Escribir matriz[i,j], " ",Sin Saltar;
			
		FinPara
		
		Escribir " ";
		
	FinPara
	
FinProceso