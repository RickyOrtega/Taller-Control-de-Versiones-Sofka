//El banco "Su banco fiel" es un banco que inicia sus actividades
//financieras y necesita una aplicación para llevar las cuentas
//de sus usuarios; por lo tanto, se sugiere que la cuenta tenga
//los atributos titular y cantidad. Para cada cliente las cuentas
//permitirán realizar ingresos, retiros o consultas de valor.
//En los ingresos no se pueden insertar valores negativos y
//para los retiros el valor no puede ser mayor al valor que tiene en la cuenta.

SubProceso menu1=setMenu1()
	
	Definir menu1 Como Entero;
	
	Escribir "------------MENÚ------------";
	Escribir "1. Retiro";
	Escribir "2. Ingreso";
	Escribir "3. Consultar saldo";
	Escribir "Elija una opción:";
	Leer menu1;
	
FinSubProceso

SubProceso retiro(saldo, val)
	
	Si val>saldo o val<0 Entonces
		
		Escribir "Transacción declinada.";
		
	SiNo
		Escribir "Saldo anterior: ", saldo;
		Escribir "Retiro: ", val;
		
		saldo= saldo - val;
		Escribir "Nuevo saldo: ", saldo;
		
	FinSi
	
FinSubProceso

SubProceso deposito(saldo, val)
	
	Si val<0 Entonces
		
		Escribir "Transacción declinada.";
		
	SiNo
		Escribir "Saldo anterior: ", saldo;
		Escribir "Ingreso: ", val;
		
		saldo = saldo + val;
		Escribir "Nuevo saldo: ", saldo;
		
	FinSi
	
FinSubProceso

SubProceso getSaldo(saldo)
	
	Escribir "Su saldo actual: ", saldo;
	
FinSubProceso

Proceso Ejercicio10
	
	Definir titular Como Caracter;
	Definir saldo Como Real;
	Definir val Como Real;
	Definir menu1 Como Entero;
	Definir a Como Entero;
	a=0;
	
	Repetir
		
		Escribir "Bienvenido a Su Banco Fiel";
		Escribir "";
		Escribir "Crear cuenta";
		Escribir "Titular: ";
		Leer titular;
		Escribir "Saldo con el que abrirá la cuenta: ";
		Leer saldo;
		
		a = a+1;
		
		Limpiar Pantalla;
		
		menu1=setMenu1();
		
		Segun menu1 Hacer
			
			1:
				
				Escribir "------------RETIRO------------";
				getSaldo(saldo);
				Escribir "Valor a retirar: ";
				Leer val;
				
				retiro(saldo, val);
				
			2:
				Escribir "------------INGRESO------------";
				getSaldo(saldo);
				Escribir "Valor a ingresar: ";
				Leer val;
				
				deposito(saldo, val);
				
			3: 
				Escribir "------------SALDO------------";
				getSaldo(saldo);
				
		FinSegun
		
		Escribir "-------------------------------------------------";
				
	Hasta Que a>=5;
FinProceso