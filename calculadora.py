print("==============================")
print("   CALCULADORA EM PYTHON")
print("==============================")
print()

num1 = float(input("Digite o primeiro número: "))
num2 = float(input("Digite o segundo número: "))

print()
print("Escolha a operação:")
print("1 - Soma")
print("2 - Subtração")
print("3 - Multiplicação")
print("4 - Divisão")
print()

opcao = input("Digite a opção: ")

print()

if opcao == "1":
    resultado = num1 + num2
    print("Resultado da soma:", resultado)

elif opcao == "2":
    resultado = num1 - num2
    print("Resultado da subtração:", resultado)

elif opcao == "3":
    resultado = num1 * num2
    print("Resultado da multiplicação:", resultado)

elif opcao == "4":
    if num2 == 0:
        print("Erro: divisão por zero não é permitida.")
    else:
        resultado = num1 / num2
        print("Resultado da divisão:", resultado)

else:
    print("Opção inválida.")

print()
print("Calculadora finalizada.")
