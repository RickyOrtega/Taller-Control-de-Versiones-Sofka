//El taller de motos "El Maquinista" recibe motocicletas de alto cilindraje
//para realizar las respectivas revisiones y requiere una aplicaci�n que le
//permita registrar los servicios generados a sus clientes. Para cada
//motocicleta se debe tener registro del ingreso al taller y las observaciones
//por parte del cliente. Tambi�n debe existir registro de salida del taller
//con las novedades y otra de arreglos hechos por el mec�nico en caso de que
//se requiera inventariar cambios repuestos en la motocicleta al entregarla.

Proceso Ejercicio6
	
	Definir fechaIngreso Como Caracter;
	Definir fechaSalida Como Caracter;
	Definir modelo Como Caracter;
	Definir matricula Como Caracter;
	Definir nombreCliente Como Caracter;
	Definir trabajoRealizar Como Caracter;
	
	Definir observaciones Como Caracter;
	
	Definir registros Como Caracter;
	
	Dimension registros[5];
	
	registros[0]="10/02/2020 - Colocar Calcoman�a: COVID No existe";
	registros[1]="05/08/2020 - Quitar Calcoman�a: COVID No existe";
	registros[2]="10/02/2021 - Colocar Calcoman�a: Vamos a loquiar, adi�s COVID";
	registros[3]="30/05/2021 - Quitar Calcoman�a: Vamos a loquiar, adi�s COVID";
	registros[4]="31/05/2021 - Colocar Calcoman�a: Q.E.P.D. Anuel Yandel MhI pRimItHo byo";
	
	Definir menu1 Como Entero;
	Definir menu2 Como Entero;
	
	Definir a Como Entero;
	a=0;
	
	Escribir "Taller de motos El Maquinista";
	Escribir ""; 
	Escribir "Ingrese su nombre: ";
	Leer nombreCliente;
	
	Escribir "Taller de motos El Maquinista";
	Escribir ""; 
	Escribir "----------------MEN�-------------";
	Escribir "1. Servicios disponibles.";
	Escribir "2. Retiros.";
	Escribir "Ingrese su elecci�n:";
	Leer menu1;
	
	Escribir "Taller de motos El Maquinista";
	Escribir ""; 
	
	Si menu1==1 Entonces
		Escribir "Servicios disponibles.";
		Escribir "1. Lavado";
		Escribir "2. Retiro calcoman�as.";
		Escribir "3. Pintura.";
		Escribir "4. Revisi�n t�cnico-mec�nica.";
		Escribir "5. Cambio piezas.";
		Escribir "Ingrese su elecci�n:";
		Leer menu2;
		
		Escribir "Taller de motos El Maquinista";
		Escribir "";
		
		Si menu2 == 1 Entonces
			Escribir "Lavado.";
			trabajoRealizar = "Lavado";
		FinSi
		
		Si menu2 == 2 Entonces
			Escribir "Retiro calcoman�as.";
			trabajoRealizar = "Retiro calcoman�as";
		FinSi
		
		Si menu2 == 3 Entonces
			Escribir "Pintura.";
			trabajoRealizar = "Pintura";
		FinSi
		
		Si menu2 == 4 Entonces
			Escribir "Revisi�n t�cnico-mec�nica.";
			trabajoRealizar = "Revisi�n t�cnico-mec�nica";
		FinSi
		
		Si menu2 == 5 Entonces
			Escribir "Cambio piezas.";
			trabajoRealizar = "Cambio piezas";
		FinSi
		
		Escribir "Datos del veh�culo.";
		Escribir "Modelo: ";
		Leer modelo;
		Escribir "Matricula: ";
		Leer matricula;
		Escribir "Fecha ingreso: ";
		Leer fechaIngreso;
		Escribir "Fecha estimada para la salida: ";
		Leer fechaSalida;
		Escribir "Servicio a realizar: ", trabajoRealizar;
		Escribir "Anote las observaciones que crea son necesarias para el trabajo:";
		Leer observaciones;
		
		Si menu2<1 o menu2>5 Entonces
			
			Escribir "No eligi� una opci�n v�lida.";
			
		FinSi
		
	FinSi
	
	Si menu1==2 Entonces
		
		Escribir "Retiro veh�culo.";
		Escribir "1. Retirar veh�culo.";
		Escribir "2. Consultar trabajos hechos a mi veh�culo.";
		Escribir "Ingrese su elecci�n:";
		Leer menu2;
		
		Escribir "Ingrese la matr�cula de su veh�culo: ";
		Leer matricula;
		
		Si menu2==1 Entonces
			
			Escribir "�Perfecto! La moto con matr�cula ", matricula, " puede ser recogida el d�a de hoy en nuestra oficina principal.";
			
			Escribir "�Alguna observaci�n?";
			Leer observaciones;
			
		FinSi
		
		Si menu2==2 Entonces
			
			Escribir "Los registros que tenemos sobre la moto con matr�cula ", matricula, " son:";
			
			Repetir
				
				Escribir registros[a];
				a = a+1;
				
			Hasta Que a>=5;
			
		FinSi
		
		Si menu2<1 o menu2>2 Entonces
			
			Escribir "No eligi� una opci�n v�lida.";
			
		FinSi

	FinSi
	
	Si menu1<1 o menu1>2 Entonces
		
		Escribir "No eligi� una opci�n v�lida.";
		
	FinSi
	
FinProceso