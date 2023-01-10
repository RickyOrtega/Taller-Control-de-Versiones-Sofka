//Se requiere un programa que pueda crear la tabla de multiplicar
//del número que el usuario indique por medio del ciclo Para;
//esta debe ser impresa del 1 al 10.

Proceso Ejercicio4
	
	Definir numero Como Entero;
	Definir resultado Como Entero;
	
	Escribir "Ingrese el número para generar su tabla de multiplicar: ";
	Leer numero;
	
	Definir i Como Entero;
	
	Para i = 1 Hasta 10 Con Paso 1 Hacer
		
		resultado = i * numero;
		
		Escribir i," x ", numero, " = ",resultado;
		
	FinPara
	
FinProceso