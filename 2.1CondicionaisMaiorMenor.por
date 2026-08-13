programa
{

	inclua biblioteca Matematica
	inclua biblioteca Tipos
	
	funcao inicio()
	{
		inteiro num1, num2

		escreva("digite um número...")
		leia(num1)
		
		escreva("digite outro número...")
		leia(num2)

		real num1_real = Tipos.inteiro_para_real(num1)
		real num2_real = Tipos.inteiro_para_real(num2)
		
		escreva("o número MAIOR entre ", num1_real, " e ", num2_real, " é: ")
		real num_maior = Matematica.maior_numero(num1_real, num2_real)
		escreva(num_maior, "\n")
		
		escreva("o número MENOR entre ", num1_real, " e ", num2_real, " é: ")
		real num_menor = Matematica.menor_numero(num1_real, num2_real)
		escreva(num_menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 115; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */