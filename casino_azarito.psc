Algoritmo casino_azarito
	//Gustavo Ernesto Olmedo
	//Sitio de entretenimiento con 2 juegos de azar
	
	Definir edad Como Entero;
	Escribir "Bienvenido a AZARITO. El mejor sitio de apuestas";
	Escribir "Por favor ingrese su edad:";
	//El jugador debe ser mayor de 18 años para acceder al sitio Azarito
	Leer edad;
	Si edad>18 Entonces
		Escribir "Felicidades, puedes jugar";
	SiNo
		Escribir "Lo sentimos, no podrás jugar";
	Fin Si
FinAlgoritmo
