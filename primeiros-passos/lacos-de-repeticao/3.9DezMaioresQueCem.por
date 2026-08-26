programa {

  inclua biblioteca Util

  //3.9. Imprima os 10 primeiros números inteiros maiores que 100.

  funcao inicio() {
    inteiro contador = 0, inicio = 100
    enquanto(contador != 10) {
      limpa()
      contador++
      escreva(inicio + contador, "\n")
      Util.aguarde(1000)
    }
  }
}
