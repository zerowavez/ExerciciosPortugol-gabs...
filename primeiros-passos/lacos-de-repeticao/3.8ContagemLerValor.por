programa {

  inclua biblioteca Util

  //3.8. Leia um valor N (N > 0) e imprima todos os inteiros de 1 até N.

  funcao inicio() {
    inteiro contador = 1, num = 0
    enquanto(num <= 0) {
      escreva("Digite o número até qual quer contar ")
      leia(num)
      limpa()
    }

    enquanto(contador != num +1) {
      escreva(contador, "\n")
      contador++
      Util.aguarde(1000)
      limpa()
    }
  }
}
