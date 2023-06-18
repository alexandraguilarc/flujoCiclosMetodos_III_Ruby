# Programa que simula el juego de “Adivina el número”. En este programa el computador va a elegir un número aleatorio y el usuario al seleccionar un número debe indicarle si ganó o perdió. La condición para ganar es que el número del computador debe ser igual al del jugador. El rango de número va entre 1 hasta n, tomando en consideración que mientras más amplio sea el rango más duradero será el juego.

# Utiliza el método .rand para generar números aleatorios. 
# Implementa el ciclo más conveniente para lograr la lógica del ejercicio.


puts "***Bienvenido al juego adivina el número***"
#Condiciones del juego
puts "Para jugar deberás indicar un número para establecer el límite del rango entre los que se encuentra el número a adivinar: "
numeroRangoSuperior = gets.chomp.to_i
puts "Este juego se inicia escogiendo un número del 0 al #{numeroRangoSuperior}"

#Jugador contra la computadora elige una opción
puts " Elige el número de tu jugada: "
numeroJugador = gets.chomp.to_i
puts "Jugador juega #{numeroJugador}"

#Computador elige una opción
numeroComputador = rand(1..numeroRangoSuperior)
puts "Computador juega #{numeroComputador}"


i = 0
while i <= numeroRangoSuperior
    i = i + 1  
end

if (numeroJugador === numeroComputador)
    puts"Excelente, has adivinado el número del computador, has ganado" 
else
    puts "Incorrecto, vuelve a intentarlo"
end