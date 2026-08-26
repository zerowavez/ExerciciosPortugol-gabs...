programa {

  //3.5. Leia dois inteiros (sendo o primeiro menor que o segundo)
  //e calcule a média desses números e de todos os inteiros entre eles.

  funcao inicio() {
    inteiro num_menor, num_maior = 0, total = 0
    
    escreva("Diga o número inicial da nossa sequência: ")
    leia(num_menor)

    enquanto(num_maior < num_menor) {
      escreva("Diga o número final da nossa sequência (deve ser maior que o primeiro) ")
      leia(num_maior)
    }

    inteiro contador = num_menor

    enquanto(contador != num_maior) {
      total += contador
      contador++
      escreva(contador, " ", total, "\n")
    }

    escreva("A média dos números entre ", num_menor, " e ", num_maior, " é ", total / 85)
  }
}
