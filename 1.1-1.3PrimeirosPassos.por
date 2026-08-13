programa
{
	inclua biblioteca Texto

	funcao inicio()
	{
		cadeia nome_do_usuario, nome_do_carro = "fusca"
		
		escreva("digite seu nome... ")
		
		leia(nome_do_usuario)
		
		inteiro quantia_caracteres_nome = Texto.numero_caracteres(nome_do_usuario)
		
		cadeia nome_do_usuario_ALTO = Texto.caixa_alta(nome_do_usuario)
		
		escreva("olá ",
		nome_do_usuario_ALTO,
		" seu carro é um ",
		nome_do_carro,
		" e seu nome tem ",
		quantia_caracteres_nome,
		" caracteres!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */