programa {

  //3.7. Leia 6 notas válidas (de 0 a 10), calcule e exiba a média simples.

  funcao inicio() {
    inteiro contador = 0, total = 0, nota = 0

    escreva("Informe as 6 notas (devem ser entre 0 e 10)\n") 

    enquanto(contador != 6) {
      faca   
        {   
          leia(nota)  
        } enquanto (nota < 0 ou nota > 10)  
        contador++
        total += nota
    }
    limpa()
    escreva("A media simples das 6 notas é ", total / 6)
  }
}
