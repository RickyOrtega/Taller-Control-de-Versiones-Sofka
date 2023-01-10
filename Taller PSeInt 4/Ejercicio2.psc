//Crear un vector de tipo Entero con 5 posiciones,
//llenarlo con informaci�n solicitada al usuario.
//Despu�s de recoger toda la informaci�n, se requiere
//imprimir el �ndice de cada posici�n en el arreglo
//con su valor de la siguiente manera:

//>[0] = 55
//>[1] = 99
//>[2] = 11
//>[3] = 56
//>[4] = 69

Proceso Ejercicio2
	
	Definir arreglo Como Entero;
	
	Dimension arreglo[20];
	
	//Variable iteradora
	Definir i Como Entero;
	i=0;
	
	Definir pares Como Caracter;
	pares="N�meros pares: ";
	
	Definir impares Como Caracter;
	impares="N�meros impares: ";
	
	Repetir
		
		Repetir
			
			arreglo[i]=azar(100);
			
		Hasta Que arreglo[i]<>0;
		
		Escribir "[",i,"] = ",arreglo[i];
		
		i=i+1;
		
	Hasta Que i>=20;
	
	i=0;
	
	Mientras i<20 Hacer
		
		Si arreglo[i] MOD 2==0 Entonces
			
			pares=Concatenar(pares, ConvertirATexto(arreglo[i]));
			
			Si i<>19 Entonces
				
				pares=Concatenar(pares, ", ");
				
			FinSi
			
		FinSi
		
		Si arreglo[i] MOD 2<>0 Entonces
			
			impares=Concatenar(impares, ConvertirATexto(arreglo[i]));
			
			Si i<>19 Entonces
				
				impares=Concatenar(impares, ", ");
				
			FinSi
			
		FinSi
		
		i=i+1;
		
	FinMientras
	
	Escribir pares;
	Escribir impares;
	
FinProceso