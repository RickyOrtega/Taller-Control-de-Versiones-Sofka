//La Secretaría de Salud Municipal requiere de una aplicación que le permita
//calcular el IMC (Índice de masa corporal) y requiere los datos peso en
//kilogramos y estatura en metros Para cada persona encuestada adicional
//a los datos suministrados, debe mostrar el resultado para cada uno y establecer
//en qué rango se encuentra (bajo peso, normal, sobrepeso y obeso).

//Los datos los tomé de: http://tuendocrinologo.com/site/nutricion/calculadora.htmlW

Proceso Ejercicio7
	
	Definir estatura Como Real;
	Definir masa Como Real;
	Definir imc Como Real;
	
	Escribir "Hola. El día de hoy vamos a tomar algunos datos para conocer tu Índice de Masa Corporal (IMC)";
	Escribir "Comencemos: ";
	Escribir "Estatura (en metros): ";
	Leer estatura;
	Escribir  "Peso (en kg): ";
	Leer masa;
	
	estatura = estatura*estatura;
	
	imc = masa/estatura;
	
	Escribir "IMC: ", imc;
	
	Si imc<18.5 Entonces
		
		Escribir "Está algo desbalanceado tu IMC. Te recomendamos que evalúes tu dieta";
		
	FinSi
	
	Si imc>=18.5 y imc<25 Entonces
		
		Escribir "¡Felicidades! Tienes un IMC Normal con riesgo Promedio.";
		
	FinSi
	
	Si imc>=25 y imc<30 Entonces
		
		Escribir "¡Cuidado! Tienes un IMC superior lo cual indica Sobrepeso con riesgo Aumentado.";
		
	FinSi
	
	Si imc>=30 y imc<35 Entonces
		
		Escribir "¡Cuidado! Tienes un IMC superior lo cual indica Obesidad grado I con riesgo Moderado.";
		
	FinSi
	
	Si imc>=35 y imc<40 Entonces
		
		Escribir "¡Cuidado! Tienes un IMC superior lo cual indica Obesidad grado II con riesgo Severo.";
		
	FinSi
	
	Si imc>=40 Entonces
		
		Escribir "¡Cuidado! Tienes un IMC superior lo cual indica Obesidad grado III con riesgo Muy Severo.";
		
	FinSi

	
FinProceso