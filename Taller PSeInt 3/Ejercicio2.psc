Proceso Ejercicio2
	
	Definir cadenaTexto Como Caracter;
	Definir cadenaAux Como Caracter;
	
	cadenaTexto = "         *";
	
	Definir i Como Entero;
	i=0;
	
	Mientras i<10 Hacer
		
		Escribir cadenaTexto;
		
		cadenaAux = Subcadena(cadenaTexto,1,9);
		
		cadenaTexto = Concatenar(cadenaAux,"*");
		
		i=i+1;
		
	FinMientras
	
FinProceso