programa
{
	
	// 2.8. Leia 4 números, aceitando apenas valores maiores que 0
	// e menores que 10. Calcule a média e: - se média > 5
	// exiba Você passou no teste; - caso contrário
	// exiba Tente novamente.
	
	funcao inicio()
	{
		inteiro num1, num2, num3, num4
		faca   
        {  
            escreva ("Informe a primeira nota: ")  
            leia(num1)  
        } enquanto (num1 < 0 ou num1 > 10)  
        
        faca   
        {  
            escreva ("Informe a segunda nota: ")  
            leia(num2)  
        } enquanto (num2 < 0 ou num2 > 10)  
        
        faca   
        {  
            escreva ("Informe a terceira nota: ")  
            leia(num3)  
        } enquanto (num3 < 0 ou num3 > 10)  
        
        faca   
        {  
            escreva ("Informe a quarta nota: ")  
            leia(num4)  
        } enquanto (num4 < 0 ou num4 > 10)  

        inteiro soma = num1 + num2 + num3 + num4
	   inteiro media = soma / 4

	   se (media > 5) {
	   	escreva("Você passou no teste!")
	   } senao {
	   	escreva("Você FALHOUUUUUUUUU")
	   }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 595; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */