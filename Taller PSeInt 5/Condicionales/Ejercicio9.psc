//El profesor de geometría está explicando a sus estudiantes
//las fórmulas para calcular el área de diferentes figuras
//geométricas, para ello requiere una aplicación que le
//facilite el ejercicio solicitándole los valores al estudiante.
//La aplicación debe permitir que el estudiante seleccione
//si desea calcular el área de un rectángulo, triángulo o
//trapecio. No olvide solicitar los datos necesarios para
//realizar cada cálculo y mostrar su respectivo resultado.

//A. Trapecio: ((Base mayor + base menor) /2)x altura
//A. Triángulo: (Base x Altura)/2
//A. Rectángulo: Base x Altura

SubProceso mostrarCabeceraRectangulo()
	
	Escribir " -----------------------";
	Escribir " |                     |";
	Escribir " |                     | Altura";
	Escribir " |                     |";
	Escribir " -----------------------";
	Escribir "          Base          ";
	Escribir "Para calcular el área de un Rectángulo necesitamos una base y una altura.";
	
FinSubProceso

SubProceso area=setAreaRectangulo(base, altura)
	
	Definir area Como Real;
	
	area = base * altura;
	
FinSubProceso

SubProceso mostrarCabeceraTriangulo()
	
	Escribir "        	  / \       ";				
	Escribir "        /     \       ";
	Escribir "      /         \     ";
	Escribir "    /             \   Altura";
	Escribir "  /                 \ ";
	Escribir " ---------------------";
	Escribir "          Base          ";
	Escribir "Para calcular el área de un Triángulo necesitamos una base y una altura.";
	
FinSubProceso

SubProceso area=setAreaTriangulo(base, altura)
	
	Definir area Como Real;
	
	area = (base * altura)/2;
	
FinSubProceso

SubProceso mostrarCabeceraTrapecio()
	
	Escribir "                 Base Menor                 ";
	Escribir "        	  /-----------------------\        ";				
	Escribir "        /                           \       ";
	Escribir "      /                               \     ";
	Escribir "    /                                   \   Altura";
	Escribir "  /                                       \ ";
	Escribir " -------------------------------------------";
	Escribir "                 Base Mayor                 ";
	Escribir "Para calcular el área de un Trapecio necesitamos una base Mayor, una base Menor y una altura.";
	
FinSubProceso

SubProceso area=setAreaTrapecio(baseMayor, baseMenor, altura)
	
	Definir area Como Real;
	
	area = ((baseMenor + baseMayor)/2)*altura;
	
FinSubProceso

Proceso Ejercicio9
	
	Definir finalizar Como Entero;
	Definir menu1 Como Entero;
	finalizar=0;
	
	Definir base Como Real;
	Definir baseMayor Como Real;
	Definir altura Como Real;
	Definir area Como Real;
	
	Repetir
		
		Escribir "Vamos a calcular el área de algunas figuras geométricas.";
		Escribir "1. Rectángulo.";
		Escribir "2. Triángulo.";
		Escribir "3. Trapecio.";
		Leer menu1;
		
		Limpiar Pantalla;
		
		Segun menu1 Hacer
			
			1:
				
				mostrarCabeceraRectangulo();
				
				Escribir "Base:";
				Leer base;
				Escribir "Altura:";
				Leer altura;
				
				area=setAreaRectangulo(base, altura);
				
			2:
				
				mostrarCabeceraTriangulo();
				
				Escribir "Base:";
				Leer base;
				Escribir "Altura:";
				Leer altura;
				
				area = setAreaTriangulo(base, altura);
				
			3:
				
				mostrarCabeceraTrapecio();
				
				Escribir "Base Menor:";
				Leer base;
				Escribir "Altura:";
				Leer altura;
				Escribir "Base Mayor:";
				Leer baseMayor;
				
				area=setAreaTrapecio(baseMayor, base, altura);
				
			De Otro Modo:
				Escribir "No ingresaste una opción válida.";
		FinSegun
		
		Escribir "Área: ", area;
		
		Escribir "¿Desea continuar ejecutando?";
		Escribir "0. SI";
		Escribir "Cualquier otro número. NO";
		Leer finalizar;
		
		Si finalizar<>0 Entonces
			
			finalizar=1;
			
		FinSi
		
	Hasta Que finalizar==1;
	
FinProceso