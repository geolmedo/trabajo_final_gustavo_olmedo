SubAlgoritmo piedra_papel_tijera
	//Gustavo Ernesto Olmedo
	//SubAlgoritmo para el juego de Piedra, Papel o Tijera
	Definir eleccion_primer_jugador, nombre_primer_jugador Como Caracter;
	Definir eleccion_casa_azar Como Entero;
	
	Escribir "Por favor escriba su nombre:";
	Leer nombre_primer_jugador;
	
	Repetir
		Escribir "¿Piedra, Papel o Tijera?";
		Escribir "P: Piedra";
		Escribir "A: Papel";
		Escribir "T: Tijera";
		Leer eleccion_primer_jugador;
		eleccion_primer_jugador<-Mayusculas(eleccion_primer_jugador);
	Hasta Que eleccion_primer_jugador="P" O eleccion_primer_jugador="A" O eleccion_primer_jugador="T"
	
	Si eleccion_primer_jugador="P" Entonces
		apuesta_jugador<-"Piedra";
	SiNo
		Si eleccion_primer_jugador="A" Entonces
			apuesta_jugador="Papel"
		SiNo
			apuesta_jugador="Tijera"
		FinSi
	Fin Si
	
	Escribir nombre_primer_jugador " elegiste: ", apuesta_jugador;
	
	Escribir "Ahora juega la casa:";
		
	eleccion_casa_azar<-Aleatorio(1,3);
	Segun eleccion_casa_azar Hacer
		1:
			eleccion_casa<-"P";
		2:
			eleccion_casa<-"A";
		3:
			eleccion_casa<-"T";
	Fin Segun
	Si eleccion_casa="P" Entonces
		apuesta_casa<-"Piedra";
	SiNo
		Si eleccion_casa="A" Entonces
			apuesta_casa="Papel"
		SiNo
			apuesta_casa="Tijera"
		FinSi
	Fin Si
	Escribir "La casa eligió: ", apuesta_casa;
	
	Si eleccion_primer_jugador <> eleccion_casa Entonces
		Si (eleccion_primer_jugador= "P" Y  eleccion_casa="T") O (eleccion_primer_jugador= "A"  Y  eleccion_casa="P") O (eleccion_primer_jugador= "T" Y  eleccion_casa="A") Entonces
			Escribir "¡¡¡FELICITACIONES ", nombre_primer_jugador, " GANASTE!!!" ;
		SiNo
			Si  (eleccion_casa= "P" Y  eleccion_primer_jugador="T") O (eleccion_casa= "A" Y  eleccion_primer_jugador="P") O (eleccion_casa= "T" Y  eleccion_primer_jugador="A" ) Entonces
				//Escribir nombre_primer_jugador, " eligió: ";
				
				Escribir "Lo sentimos, la casa gana...";
			FinSi
		Fin Si
	SiNo
		Escribir nombre_primer_jugador, " y la casa ¡SALIERON EMPATE!";
	FinSi
FinSubAlgoritmo

Algoritmo casino_azarito
	//Gustavo Ernesto Olmedo
	//Sitio de entretenimiento con 2 juegos de azar
	
	Definir edad, salir,seleccion Como Entero;
	Escribir "Bienvenido a AZARITO. El mejor sitio de apuestas";
	Escribir "Por favor ingrese su edad:";
	//El jugador debe ser mayor de 18 años para acceder al sitio Azarito
	Leer edad;
	Si edad>18 Entonces
		Escribir "¡Que gusto que estés aquí";
		salir<-0;
		Mientras salir<>9 Hacer
			Escribir "¿Qué deseas jugar?";
			Escribir "1- Piedra, pepel o tijea";
			Escribir "2- Sumatoria mayor de dos Dados";
			Escribir "9- Salir";
			Leer seleccion;
			Segun seleccion Hacer
				1:
					piedra_papel_tijera;
				2:
					Escribir "Dados";
				9: salir<-9;	
				De Otro Modo:
					Escribir "Seleccionó una opción inválida";
			Fin Segun
		FinMientras
		Escribir "¡AZARITO agradece su visita!";
	SiNo
		Escribir "Lo sentimos, no podrás jugar";
	Fin Si
FinAlgoritmo




