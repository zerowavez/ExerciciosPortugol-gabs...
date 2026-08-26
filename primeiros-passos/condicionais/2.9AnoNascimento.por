programa
{
	
	// 2.9. Leia o ano de nascimento
	// e informe se a pessoa pode votar no ano atual
	// (sem considerar o mês).
	
	funcao inicio()
	{
		inteiro ano_nascimento, ano_atual = 2026
		escreva("Digite o ano de seu nascimento... ")
		leia(ano_nascimento)

		inteiro idade = ano_atual - ano_nascimento

		se (idade > 16) {
			escreva("Você pode votar!!!")
		} senao {
			escreva("Você ainda não pode votar")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 267; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */