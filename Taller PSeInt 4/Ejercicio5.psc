//Se debe de imprimir el siguiente cuadro:

//El usuario deberá insertar la fila y columna de la cual desea ver el resultado,
//el resultado de cada celda debe estar previamente calculado en una matriz
//bidimensional la cual cada resultado obedecerá a la fila y columna insertada
//por el usuario.

Proceso Ejercicio5
	
	Definir matriz Como Entero;
	
	Dimension matriz[10,10];
	
	Definir i Como Entero;
	Definir j Como Entero;
	
	Definir filas Como Caracter;
	
	Definir filaR Como Entero;
	Definir columnaR Como Entero;
	
	
	
	filas="   FILAS  ";
	
	//Primero vamos a imprimir el cuadro
	
	//Cabecera
	Escribir "                                    COLUMNAS                                    ";
	
	Escribir "      ";
	Para i = 0  Hasta 9 Con Paso 1 Hacer
		
		Escribir "      ",i,"   ", Sin Saltar;
		
	FinPara
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		
		Escribir "";
		Escribir Subcadena(filas, i,i), Sin Saltar;
		
		Escribir i, Sin Saltar;
		
		Para j = 0 Hasta 9 Con Paso 1 Hacer
			
			Si i+1<10 Entonces
				
					Escribir "", Sin Saltar;
					
				
				FinSi
				
			Si j+1>1 Entonces
					
				Escribir "  ", Sin Saltar;
					
			FinSi
			
			Si i+1<>10 Entonces
				
				Escribir "  ",j+1," x ",i+1," ", Sin Saltar;
				
			SiNo
				
				Escribir "  ",j+1," x ",i+1, Sin Saltar;
				
			FinSi
			
			matriz[j,i]=(i+1)*(j+1);
			
		FinPara
		
	FinPara
	
	Escribir "";
	
	Repetir
		
		Escribir "Ingrese la fila (0-9): ";
		Leer filaR;
		
	Hasta Que filaR>=0 y filaR<=9 
	
	Repetir
		
		Escribir "Ingrese la columna (0-9): ";
		Leer columnaR;
		
	Hasta Que columnaR>=0 y columnaR<=9 
	
	Escribir "Resultado: ", matriz[filaR, columnaR];
	
FinProceso