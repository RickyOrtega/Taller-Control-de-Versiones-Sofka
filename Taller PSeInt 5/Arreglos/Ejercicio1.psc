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

//La verdad no s� qu� tanto puedo convertir esto a funciones

SubProceso mostrarArreglo(arreglo, tamagno)
	
	Definir i Como Entero;
	i=0;
	
	Repetir
		
		Escribir "[",i,"] = ",arreglo[i];
		
		i=i+1;
		
	Hasta Que i>=tamagno;
	
	
FinSubProceso

SubProceso numero=pedirNumero()
	
	Definir numero Como Entero;
	
	Escribir "Ingrese un n�mero: ";
	Leer numero;
	
	
FinSubProceso

Proceso Ejercicio2
	
	Definir arreglo Como Entero;
	
	Dimension arreglo[5];
	
	//Variable iteradora
	Definir i Como Entero;
	i=0;
	
	Repetir
		
		arreglo[i]=pedirNumero();
		
		i=i+1;
		
		Limpiar Pantalla;
		
	Hasta Que i>=5;
	
	i=0;
	
	mostrarArreglo(arreglo, 5);
	
FinProceso