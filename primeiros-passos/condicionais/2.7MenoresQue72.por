programa
{

	inclua biblioteca Matematica
	inclua biblioteca Tipos
	
	funcao inicio()
	{
		inteiro num1, num2, num3, num4, num5, num6
		escreva("Digite 6 números... ")
		leia(num1, num2, num3, num4, num5, num6)

		inteiro soma = num1 + num2 + num3 + num4 + num5 + num6

		escreva("os números menores que 72 são: \n")
		se (num1 < 72) {
			escreva(num1, " ")
		}
		se (num2 < 72) {
			escreva(num2, " ")
		}
		se (num3 < 72) {
			escreva(num3, " ")
		}
		se (num4 < 72) {
			escreva(num4, " ")
		}
		se (num5 < 72) {
			escreva(num5, " ")
		}
		se (num6 < 72) {
			escreva(num6, " ")
		}
		
		escreva("a soma de todos os números é: ", soma)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 594; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */