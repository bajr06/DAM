print("Hola Mundo")
print("ESTO ES UNA PRUEBA DEL FUNCIONAMIENTO DE GIT.")

num_1 = int(input("Escriba un número: "))
num_2 = int(input("Escriba otro número: "))

operacion = input("¿Qué operación deseas hacer? ")
if operacion == "Suma" or operacion == "suma":
    print("La Suma de estos números es:", num_1 + num_2)
elif operacion == "Resta" or operacion == "resta":
    print("La Resta de estos números es:", num_1 - num_2)
elif operacion == "Multiplicacion" or operacion == "multiplicacion":
    print("La Multiplicación de estos números es:", num_1 * num_2)
elif operacion == "Division" or operacion == "division":
    print("La División de estos números es:", num_1 / num_2)
else:
    print("La Operación que quieres hacer no existe.")
