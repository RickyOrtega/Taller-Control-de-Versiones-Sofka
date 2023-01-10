Proceso Ejercicio3
	
	Definir cadenaTexto Como Caracter;
	Definir cadenaAux Como Caracter;
	Definir base Como Caracter;
	base="";
	
	cadenaTexto = "         *";
	
	Definir i Como Entero;
	i=0;
	
	Repetir
		Escribir cadenaTexto,base;
		
		cadenaAux = Subcadena(cadenaTexto,1,9);
		
		cadenaTexto = Concatenar(cadenaAux,"*");
		
		base = Concatenar(base,"*");
		
		i=i+1;
	Hasta Que i>=10
	
	i=0;
	
	cadenaTexto = "        **";
	base="*";

	Repetir
		
		Escribir cadenaTexto,base;
		
		i=i+1;
		
		Si i>=2 Entonces
			
			cadenaTexto = Subcadena(cadenaTexto,1,9);
			
			base = Concatenar(base,"**");
			
		FinSi
		
	Hasta Que i>=4;
FinProceso