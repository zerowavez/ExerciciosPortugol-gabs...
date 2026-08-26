programa
{

	inclua biblioteca Matematica
	inclua biblioteca Tipos
	
	funcao inicio()
	{
		inteiro num1, num2, num3
		escreva("Digite 3 números... ")
		leia(num1, num2)

		real num1_real = Tipos.inteiro_para_real(num1)
		real num2_real = Tipos.inteiro_para_real(num2)

		real num_maior = Matematica.maior_numero(num1_real, num2_real)

		leia(num3)
		real num3_real = Tipos.inteiro_para_real(num3)

		real resultado = Matematica.maior_numero(num_maior, num3_real)

		limpa()
		escreva("o numero maior entre ",
		num1, " ", num2, " e ", num3, " é ",
		resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 148; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */