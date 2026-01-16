```bash
#!/bin/bash

clear
echo "=============================="
echo "   CALCULADORA LINUX"
echo "=============================="
echo

# Verifica se o Python está instalado
if command -v python3 >/dev/null 2>&1; then
    echo "Python detectado no sistema."
else
    echo "Python não encontrado."
    echo "Instale o Python 3 para executar o script em Python."
    exit 1
fi

echo
echo "Digite o primeiro número:"
read num1

echo "Digite o segundo número:"
read num2

echo
echo "Escolha a operação:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
echo "5 - Executar versão em Python"
echo
read operacao

echo
case $operacao in
  1)
    resultado=$(echo "$num1 + $num2" | bc)
    echo "Resultado da soma: $resultado"
    ;;
  2)
    resultado=$(echo "$num1 - $num2" | bc)
    echo "Resultado da subtração: $resultado"
    ;;
  3)
    resultado=$(echo "$num1 * $num2" | bc)
    echo "Resultado da multiplicação: $resultado"
    ;;
  4)
    if [ "$num2" == "0" ]; then
      echo "Erro: divisão por zero não é permitida."
    else
      resultado=$(echo "scale=2; $num1 / $num2" | bc)
      echo "Resultado da divisão: $resultado"
    fi
    ;;
  5)
    echo "Executando calculadora em Python..."
    python3 calculadora.py
    ;;
  *)
    echo "Opção inválida. Execute o programa novamente."
    ;;
esac

echo
echo "Calculadora finalizada."
