Algoritmo MenuPrincipal
	Definir opcion Como Entero
	Repetir
		Escribir "========= MENÚ PRINCIPAL ========="
		Escribir "1. Calcular costo en Restaurante"
		Escribir "2. Convertir Celsius a Fahrenheit"
		Escribir "3. Calcular ahorros de una persona"
		Escribir "4. Determinar si un número es par o impar"
		Escribir "5. Salir"
		Escribir "Seleccione una opción:"
		Leer opcion
		
		Segun opcion Hacer
			1:
				// Restaurante
				Definir N Como Entero
				Definir Costo, Costo_Total Como Real
				Definir SW Como Caracter
				SW = 'S'
				Repetir
					Escribir "Ingrese el número de invitados:" 
					Leer N
					Si N <= 200 Entonces
						Costo = 95
					SiNo
						Si N <= 300 Entonces
							Costo = 85
						SiNo
							Costo = 75
						Fin Si
					Fin Si
					Costo_Total = Costo * N
					Escribir "El costo total es: ", Costo_Total
					Escribir "¿Desea continuar? (S/N):"
					Leer SW
				Hasta Que SW = 'N'
				
			2:
				// Celsius a Fahrenheit
				Definir Celsius, Fahrenheit Como Real
				Escribir "Ingrese la temperatura en grados Celsius:"
				Leer Celsius
				Fahrenheit <- (Celsius * 9/5) + 32
				Escribir Celsius, " grados Celsius equivalen a ", Fahrenheit, " grados Fahrenheit."
				
			3:
				// Ahorros de una persona
				Definir M Como Entero
				Definir Dep, Ah Como Real
				Ah <- 0
				Para M = 1 Hasta 12 Con Paso 1 Hacer
					Repetir
						Escribir "Ingresar un depósito positivo:"
						Leer Dep
					Hasta Que (Dep > 0)
					Ah <- Ah + Dep 
				Fin Para
				Escribir "Total ahorro en 1 año es: ", Ah
				
			4:
				// Par o impar
				Definir numero Como Entero
				Escribir "Ingrese un número entero:"
				Leer numero
				Si numero MOD 2 = 0 Entonces
					Escribir "El número ", numero, " es par."
				Sino
					Escribir "El número ", numero, " es impar."
				FinSi
				
			5:
				Escribir "Saliendo del sistema. ¡Hasta luego!"
				
			De Otro Modo:
				Escribir "Opción no válida. Intente nuevamente."
		FinSegun
		
		Escribir ""
	Hasta Que opcion = 5
FinAlgoritmo
