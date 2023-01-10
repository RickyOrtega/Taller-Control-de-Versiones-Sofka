//El taller de motos "El Maquinista" recibe motocicletas de alto cilindraje
//para realizar las respectivas revisiones y requiere una aplicación que le
//permita registrar los servicios generados a sus clientes. Para cada
//motocicleta se debe tener registro del ingreso al taller y las observaciones
//por parte del cliente. También debe existir registro de salida del taller
//con las novedades y otra de arreglos hechos por el mecánico en caso de que
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
	
	registros[0]="10/02/2020 - Colocar Calcomanía: COVID No existe";
	registros[1]="05/08/2020 - Quitar Calcomanía: COVID No existe";
	registros[2]="10/02/2021 - Colocar Calcomanía: Vamos a loquiar, adiós COVID";
	registros[3]="30/05/2021 - Quitar Calcomanía: Vamos a loquiar, adiós COVID";
	registros[4]="31/05/2021 - Colocar Calcomanía: Q.E.P.D. Anuel Yandel MhI pRimItHo byo";
	
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
	Escribir "----------------MENÚ-------------";
	Escribir "1. Servicios disponibles.";
	Escribir "2. Retiros.";
	Escribir "Ingrese su elección:";
	Leer menu1;
	
	Escribir "Taller de motos El Maquinista";
	Escribir ""; 
	
	Si menu1==1 Entonces
		Escribir "Servicios disponibles.";
		Escribir "1. Lavado";
		Escribir "2. Retiro calcomanías.";
		Escribir "3. Pintura.";
		Escribir "4. Revisión técnico-mecánica.";
		Escribir "5. Cambio piezas.";
		Escribir "Ingrese su elección:";
		Leer menu2;
		
		Escribir "Taller de motos El Maquinista";
		Escribir "";
		
		Si menu2 == 1 Entonces
			Escribir "Lavado.";
			trabajoRealizar = "Lavado";
		FinSi
		
		Si menu2 == 2 Entonces
			Escribir "Retiro calcomanías.";
			trabajoRealizar = "Retiro calcomanías";
		FinSi
		
		Si menu2 == 3 Entonces
			Escribir "Pintura.";
			trabajoRealizar = "Pintura";
		FinSi
		
		Si menu2 == 4 Entonces
			Escribir "Revisión técnico-mecánica.";
			trabajoRealizar = "Revisión técnico-mecánica";
		FinSi
		
		Si menu2 == 5 Entonces
			Escribir "Cambio piezas.";
			trabajoRealizar = "Cambio piezas";
		FinSi
		
		Escribir "Datos del vehículo.";
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
			
			Escribir "No eligió una opción válida.";
			
		FinSi
		
	FinSi
	
	Si menu1==2 Entonces
		
		Escribir "Retiro vehículo.";
		Escribir "1. Retirar vehículo.";
		Escribir "2. Consultar trabajos hechos a mi vehículo.";
		Escribir "Ingrese su elección:";
		Leer menu2;
		
		Escribir "Ingrese la matrícula de su vehículo: ";
		Leer matricula;
		
		Si menu2==1 Entonces
			
			Escribir "¡Perfecto! La moto con matrícula ", matricula, " puede ser recogida el día de hoy en nuestra oficina principal.";
			
			Escribir "¿Alguna observación?";
			Leer observaciones;
			
		FinSi
		
		Si menu2==2 Entonces
			
			Escribir "Los registros que tenemos sobre la moto con matrícula ", matricula, " son:";
			
			Repetir
				
				Escribir registros[a];
				a = a+1;
				
			Hasta Que a>=5;
			
		FinSi
		
		Si menu2<1 o menu2>2 Entonces
			
			Escribir "No eligió una opción válida.";
			
		FinSi

	FinSi
	
	Si menu1<1 o menu1>2 Entonces
		
		Escribir "No eligió una opción válida.";
		
	FinSi
	
FinProceso