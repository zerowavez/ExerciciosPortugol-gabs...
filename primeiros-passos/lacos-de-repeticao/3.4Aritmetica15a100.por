programa {

  //3.4. Calcule e exiba a média aritmética dos números inteiros de 15 a 100 (inclusive).

  funcao inicio() {
    inteiro contador = 15, contador_total = 0

    enquanto(contador != 100) {
      contador_total += contador
      contador++
      escreva(contador, " ", contador_total, "\n")
    }

    escreva("A média dos números entre 15 e 100 é ", contador_total / 85)
  }
}
