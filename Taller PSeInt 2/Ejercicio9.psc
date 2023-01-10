//El profesor de geometr�a est� explicando a sus estudiantes
//las f�rmulas para calcular el �rea de diferentes figuras
//geom�tricas, para ello requiere una aplicaci�n que le
//facilite el ejercicio solicit�ndole los valores al estudiante.
//La aplicaci�n debe permitir que el estudiante seleccione
//si desea calcular el �rea de un rect�ngulo, tri�ngulo o
//trapecio. No olvide solicitar los datos necesarios para
//realizar cada c�lculo y mostrar su respectivo resultado.

//A. Trapecio: ((Base mayor + base menor) /2)x altura
//A. Tri�ngulo: (Base x Altura)/2
//A. Rect�ngulo: Base x Altura

Proceso Ejercicio9
	
	Definir finalizar Como Entero;
	Definir menu1 Como Entero;
	finalizar=0;
	
	Definir base Como Real;
	Definir baseMayor Como Real;
	Definir altura Como Real;
	Definir area Como Real;
	
	Repetir
		
		Escribir "Vamos a calcular el �rea de algunas figuras geom�tricas.";
		Escribir "1. Rect�ngulo.";
		Escribir "2. Tri�ngulo.";
		Escribir "3. Trapecio.";
		Leer menu1;
		
		Limpiar Pantalla;
		
		Segun menu1 Hacer
			
			1:
				Escribir " -----------------------";
				Escribir " |                     |";
				Escribir " |                     | Altura";
				Escribir " |                     |";
				Escribir " -----------------------";
				Escribir "          Base          ";
				Escribir "Para calcular el �rea de un Rect�ngulo necesitamos una base y una altura.";
				Escribir "Base:";
				Leer base;
				Escribir "Altura:";
				Leer altura;
				
				area = base * altura;
				
			2:
				Escribir "        	  / \       ";				
				Escribir "        /     \       ";
				Escribir "      /         \     ";
				Escribir "    /             \   Altura";
				Escribir "  /                 \ ";
				Escribir " ---------------------";
				Escribir "          Base          ";
				Escribir "Para calcular el �rea de un Tri�ngulo necesitamos una base y una altura.";
				Escribir "Base:";
				Leer base;
				Escribir "Altura:";
				Leer altura;
				
				area = (base * altura)/2;
				
				
			3:
				Escribir "                 Base Menor                 ";
				Escribir "        	  /-----------------------\        ";				
				Escribir "        /                           \       ";
				Escribir "      /                               \     ";
				Escribir "    /                                   \   Altura";
				Escribir "  /                                       \ ";
				Escribir " -------------------------------------------";
				Escribir "                 Base Mayor                 ";
				Escribir "Para calcular el �rea de un Trapecio necesitamos una base Mayor, una base Menor y una altura.";
				Escribir "Base Menor:";
				Leer base;
				Escribir "Altura:";
				Leer altura;
				Escribir "Base Mayor:";
				Leer baseMayor;
				
				area = ((base + baseMayor)/2)*altura;
				
			De Otro Modo:
				Escribir "No ingresaste una opci�n v�lida.";
		FinSegun
		
		Escribir "�rea: ", area;
		
		Escribir "�Desea continuar ejecutando?";
		Escribir "0. SI";
		Escribir "Cualquier otro n�mero. NO";
		Leer finalizar;
		
		Si finalizar<>0 Entonces
			
			finalizar=1;
			
		FinSi
		
	Hasta Que finalizar==1;
	
FinProceso