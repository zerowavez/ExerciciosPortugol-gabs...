programa {

  //3.1. Crie uma bomba-relógio com contagem regressiva de 30 até 0 e, ao final, escreva EXPLOSÃO.

  inclua biblioteca Util

  funcao inicio() {
    inteiro contador

    escreva("Em qual número irá começar a sua contagem regressiva? ")
    leia(contador)

    enquanto(contador > 0) {
      limpa()
      escreva(contador, "\n")
      contador--
      Util.aguarde(1000)
      se (contador == 0) {
        limpa()
        escreva("Boom chakalaka")
      }
    }
  }
}
