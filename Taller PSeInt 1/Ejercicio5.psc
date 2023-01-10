//Realizar un programa el cual solicite el nombre de su mascota,
//edad de la mascota, el tipo de mascota y su nombre completo.
//Al finalizar el sistema debe e imprimir en pantalla el siguiente mensaje:
//[Nombre de Mascota] es un(a) [Tipo de Mascota], el cual, tiene [Edad de la Mascota] años de edad y [Nombre Completo] es actualmente su dueño(a).

Proceso Ejercicio5

	Definir nombreMascota Como Caracter;
	Definir edadMascota Como Entero;
	Definir tipoMascota Como Caracter;
	Definir nombreDuegno Como Caracter;
	
	Escribir "Ingrese su nombre: ";
	Leer nombreDuegno;
	Escribir "Ingrese el nombre de su mascota: ";
	Leer nombreMascota;
	Escribir "Ingrese el tipo de animal que es su mascota: ";
	Leer tipoMascota;
	Escribir "Ingrese la edad de su mascota: ";
	Leer edadMascota;
	
	Escribir nombreMascota, " es un ", tipoMascota, ", el cual, tiene ", edadMascota, " años de edad y ", nombreDuegno, " es actualmente su dueño(a)." ;
	
FinProceso