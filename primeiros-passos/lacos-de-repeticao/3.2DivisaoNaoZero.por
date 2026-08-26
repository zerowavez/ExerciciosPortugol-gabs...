programa {

  //3.2. Leia dois valores. 
  //Enquanto o segundo valor for menor ou igual a zero,
  //peça novamente esse mesmo valor.
  //Ao final, mostre a divisão do primeiro pelo segundo.

  funcao inicio() {
    
    inteiro num1, num2 = 0

    escreva("Para fazer a divisão primeiro escreva um valor: ")
    leia(num1)

    enquanto(num2 <= 0) {
      escreva("Agora o segundo número (não pode ser 0 ou negativo): ")
      leia(num2)
    }

    escreva("O resultado de sua divisão é ", num1 / num2)
  }
}
