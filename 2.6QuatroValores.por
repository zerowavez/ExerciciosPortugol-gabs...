programa
{

	inclua biblioteca Matematica
	inclua biblioteca Tipos
	
	funcao inicio()
	{
		inteiro num1, num2, num3, num4
		escreva("Digite 4 números... ")
		leia(num1, num2, num3, num4)

		escreva("o primeiro valor digitado foi: ", num1, "\n")

		escreva("o ultimo valor digitado foi: ", num4, "\n")

		real num1_real = Tipos.inteiro_para_real(num1)
		real num2_real = Tipos.inteiro_para_real(num2)
		real num3_real = Tipos.inteiro_para_real(num3)
		real num4_real = Tipos.inteiro_para_real(num4)

		real maior_entre_1_2 = Matematica.maior_numero(num1_real, num2_real)
		real maior_entre_3_4 = Matematica.maior_numero(num3_real, num4_real)

		real entre_maiores = Matematica.maior_numero(maior_entre_1_2, maior_entre_3_4)

		escreva("o maior número foi: ", entre_maiores)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 307; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */