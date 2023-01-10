SubProceso llenarVector(arreglo)
	
	Definir i Como Entero;
	i=0;
	
	Repetir
		
		Repetir
			
			arreglo[i]=azar(100);
			
		Hasta Que arreglo[i]<>0;
		
		Escribir "[",i,"] = ",arreglo[i];
		
		i=i+1;
		
	Hasta Que i>=20;
	
FinSubProceso

SubProceso cadenaPI=cadenaParImpar(cadenaPI, i)
	
	cadenaPI=Concatenar(cadenaPI, ConvertirATexto(i));
	
	Si i<>19 Entonces
		
		cadenaPI=Concatenar(cadenaPI, ", ");
		
	FinSi
	
FinSubProceso

SubProceso imprimirTodo(pares, impares)
	
	Escribir "";
	Escribir pares;
	Escribir impares;
	
FinSubProceso

Proceso Ejercicio2
	
	Definir arreglo Como Entero;
	
	Dimension arreglo[20];
	
	//Variable iteradora
	Definir i Como Entero;
	i=0;
	
	Definir pares Como Caracter;
	pares="Números pares: ";
	
	Definir impares Como Caracter;
	impares="Números impares: ";
	
	llenarVector(arreglo);
	
	i=0;
	
	Mientras i<20 Hacer
		
		Si arreglo[i] MOD 2==0 Entonces
			
			pares=cadenaParImpar(pares, arreglo[i]);
			
		FinSi
		
		Si arreglo[i] MOD 2<>0 Entonces
			
			impares=cadenaParImpar(impares, arreglo[i]);
			
		FinSi
		
		i=i+1;
		
	FinMientras
	
	imprimirTodo(pares, impares);
	
FinProceso