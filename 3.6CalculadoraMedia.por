programa {

  //3.6. Leia 2 notas de um aluno, calcule a média final e considere aprovação com nota 9,5.
  //Em seguida, pergunte: Calcular a média de outro aluno? (S/N).
  //Se a resposta for S, repita; caso contrário, encerre e mostre a quantidade de alunos aprovados.

  funcao inicio() {
    logico quebrar = verdadeiro
    inteiro num1, num2
    caracter escolha_do_usuario

    enquanto(quebrar) {
      escreva("Diga a primeira nota do aluno: ")
      leia(num1)

      escreva("Agora a segunda nota do aluno: ")
      leia(num2)

      se (num1 + num2 / 2 >= 9.5) {
        escreva("Aluno aprovado!\n")
      } senao {
        escreva("Aluno reprovado...\n")
      }

      escreva("Gostaria de calcular a média de outro aluno? (s/n) ")
      leia(escolha_do_usuario)

      se (escolha_do_usuario == "s") {
        quebrar = verdadeiro
      } senao {
        quebrar = falso
      }
    }
  }
}
