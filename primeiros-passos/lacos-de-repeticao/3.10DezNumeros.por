programa {

  //3.10. Leia 10 valores e informe quantos estão no intervalo de 24 a 42 (inclusive)
  //e quantos estão fora.

  funcao inicio() {
    inteiro contador = 0, num = 0

    escreva("Digite 10 números e eu irei lhe dizer quais estão entre o intervalo em que estou pensando... ")

    enquanto(contador != 10){
      leia(num)
      se (num > 24 e num < 42) {
        limpa()
        escreva("Está entre o intervalo!")
      } senao {
        limpa()
        escreva("Não está, tente novamente...")
      }
    }
  }
}
