# utilizando como base el ejercicio de cálculo de IMC, agregamos en el cálculo de Obesidad los elementos faltantes dado que la obesidad se subdivide en 3 niveles. Se agrega a la lógica condicional los cálculos para esos tres niveles.

# te compartimos los datos para las subcategorías asociadas a la obesidad.
# 1.Obesidad grado I: 30 - 34.9 - Moderado
# 2.Obesidad grado II: 35 - 39.9 - Severo
# 3.Obesidad grado III: Más de 40 - Muy severo

# Se crea una función para realizar el cálculo del IMC. Esta función recibirá por parámetros dos valores.

def formula_imc(valor1, valor2)
    imc = valor1 / valor2**2            #Estatura al cuadrado
end

# Se crea una función que evalúe condicionalmente el índice de la persona en función de los datos de la tabla del IMC. Esta función recibirá por parámetro el cálculo del IMC.

def calcular_imc(imc)
    puts("Tu índice de masa corporal es => #{imc}")
    if imc < 18.5
        puts "El índice calculado es Bajo de peso"
    elsif imc <= 18.5 || imc <= 24.9
        puts "El índice calculado es Normal"
    elsif imc <= 25.0 || imc <= 29.9
        puts "El índice calculado es Sobrepeso"
    else
        puts "El índice calculado es Obesidad"
    end

    if imc >= 30 && imc <= 34.9
        puts "Obesidad grado I: Moderado"
    elsif imc >= 35 && imc <= 39.9
        puts "Obesidad grado II: Severo"
    elsif imc >= 40
        puts "Obesidad grado III: Muy severo"
    else
        puts"No posee obesidad"
    end
end

# Solicitamos al usuario mediante gets los datos que necesitamos para hacer el cálculo. Esos datos deben ser convertidos a flotantes dado que la fórmula generalmente retorna números decimales.

puts("***¡Bienvenido/a al sistema de cálculo IMC!***")

puts "Ingresa tu peso en Kilogramos: "
peso = gets.chomp.to_f

puts "Ingresa tu altura expresada en metros: "
altura = gets.chomp.to_f

# Se muestra la información calculada almacenando en una variable resultado. Esta variable tendrá asignado como valor el llamado a la función calcular_imc y le pasaremos como argumento la función formula_imc.
# Cuando invocamos formula_imc, debemos pasarle los argumentos requeridos para que se realice el cálculo, estos argumentos serán los datos obtenidos mediante gets.

resultado = calcular_imc(formula_imc(peso, altura))
puts(resultado)