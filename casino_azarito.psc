Algoritmo juego_de_dados
	Definir primer_dado, segundo_dado, suma_primer_turno, suma_segundo_turno, turno Como Entero;
	turno<-0;
	Mientras turno <> 9 Hacer
	Escribir "¿Qué turno desea?";
	Escribir "1- Primero";
	Escribir "2- Último";
	Escribir "9- Salir";
	Leer turno;
	Segun turno Hacer
		1:
			primer_dado<-Aleatorio(1,6);
			segundo_dado<-Aleatorio(1,6);
			suma_primer_turno<-primer_dado+segundo_dado;
			Escribir "Usted juega en el primer turno";
			Escribir "Primer dado: ", primer_dado, ". Segundo dado: ", segundo_dado,". Usted acumuló: ",suma_primer_turno;
			primer_dado<-Aleatorio(1,6);
			segundo_dado<-Aleatorio(1,6);
			suma_segundo_turno<-primer_dado+segundo_dado;
			Escribir "Primer dado: ", primer_dado, ". Segundo dado: ", segundo_dado,". La casa acumuló: ",suma_segundo_turno;
			Si suma_primer_turno>suma_segundo_turno Entonces
				Escribir "¡Felicitaciones Usted es el ganador!!!"
			SiNo
				Si suma_segundo_turno>suma_primer_turno Entonces
					Escribir "Lo lamentamos, la casa gana";
				SiNo
					Escribir "Es un empate";
				Fin Si
			Fin Si
		2:
			primer_dado<-Aleatorio(1,6);
			segundo_dado<-Aleatorio(1,6);
			suma_primer_turno<-primer_dado+segundo_dado;
			Escribir "La casa juega en el primer turno";
			Escribir "Primer dado: ", primer_dado, ". Segundo dado: ", segundo_dado,". La casa acumuló: ",suma_primer_turno;
			primer_dado<-Aleatorio(1,6);
			segundo_dado<-Aleatorio(1,6);
			suma_segundo_turno<-primer_dado+segundo_dado;
			Escribir "Primer dado: ", primer_dado, ". Segundo dado: ", segundo_dado,". Usted acumuló: ",suma_segundo_turno;
			Si suma_primer_turno>suma_segundo_turno Entonces
				Escribir "Lo lamentamos, la casa gana"
			SiNo
				Si suma_segundo_turno>suma_primer_turno Entonces
					Escribir "¡Felicitaciones Usted es el ganador!!!";
				SiNo
					Escribir "Es un empate";
				Fin Si
			Fin Si
		9:
			Escribir "Gracias por su visita";
		De Otro Modo:
			Escribir "Seleccionó una opción inválida";
	Fin Segun
Fin Mientras
FinAlgoritmo
