programa {
	
  inclua biblioteca Util
  inclua biblioteca Tipos

  real saldo = 150.00// Float
  logico identificado = falso
  cadeia nome

	funcao inicio() {

		inteiro opcao 

    enquanto(identificado != verdadeiro) {
      escreva("Por favor se indentifique escrevendo seu nome:\n ")
      leia(nome)

      escreva("Olá ", nome, " é um prazer ter você por aqui!\n ")
      Util.aguarde(1000)
      identificado = verdadeiro
    }

    limpa()

		escreva("Escolha uma opção:\n")
		escreva("1. Ver saldo\n")
    escreva("2. Ver extrato\n")
		escreva("3. Fazer saque\n")
		escreva("4. Fazer depósito\n")
    escreva("5. Fazer transferência\n")
		escreva("6. Sair\n")
		leia(opcao)

		escreva("A opção selecionada foi: " +opcao + "\n")

    escolha(opcao)  
      {  
        caso 1:  
          verSaldo()
        pare  

        caso 2:  
           verExtrato()
        pare  

        caso 3:  
          fazerSaque()
        pare  

        caso 4:  
          fazerDeposito() 
        pare  

        caso 5:  
          fazerTransf()
        pare  

        caso 6:  
          sair()
        pare  

        caso contrario:
          erro()
        }
	}

	funcao verSaldo(){
      limpa()

      inserirSenha()

	    escreva("Seu saldo atual é: ", saldo, " \nretornando...\n")
      Util.aguarde(5000)
      limpa()
	    inicio()
	}

  funcao verExtrato() {
    limpa()

    inserirSenha()

    limpa()

    escreva("Caneta Bic Azul (Edição Manoel Gomes)\n")
    escreva("R$109,99 - 19/08/26 às 23:99h\n")

    escreva("------------------------------\n")

    escreva("Autógrafo da Microcelebridade Lorena, Famosa Pelo Meme: Hi Loreeena\n")
    escreva("R$350,01 - 12/03/25 às 00:13h\n")

    escreva("------------------------------\n")

    escreva("Pix Do Milhão \n")
    escreva("R$1000,00 - 01/01/25 às 01:01h\n")

    Util.aguarde(5000)

    inicio()
  }
	
	funcao fazerDeposito() {

		real deposito

    limpa()

    inserirSenha()

    limpa()
		
		escreva("Qual o valor para depósito? ")
		leia(deposito)
		
		se (deposito <= 0){
      limpa()
			escreva("Por favor, informe um número válido, retornando...\n")
      Util.aguarde(3000)
			fazerDeposito()
		} senao {
			saldo = saldo + deposito
			verSaldo()
		}
	}
	
	funcao fazerSaque(){
	
		real saque
    limpa()

    inserirSenha()

    limpa()

		escreva("Qual o valor para saque? ")
		leia(saque)
	
		se (saque <= 0){
          limpa()
	        escreva("Por favor, informe um número válido, retornando...\n")
          Util.aguarde(3000)
	        fazerSaque()
		}  senao se (saque > saldo) {
          limpa()
          escreva("Operação não autorizada, \nretornando...")
          Util.aguarde(3000)
          limpa()
          fazerSaque()
    } senao {
			saldo = saldo - saque
			verSaldo()
		}
	}

  funcao fazerTransf() {
    cadeia numConta_entrada
    inteiro numConta_validado
    logico entrada_valida = falso
    inteiro qtdTransf

    limpa()

    inserirSenha()

    limpa()

    escreva("Infome o número da conta que receberá a transferência: ")
    leia(numConta_entrada)

    entrada_valida = Tipos.cadeia_e_inteiro(numConta_entrada, 10)

    se (nao entrada_valida) {
      limpa()
      escreva("Insira um número de conta válido!\nretornando...")
      Util.aguarde(3000)
      inicio()
    } senao {
      numConta_validado = Tipos.cadeia_para_inteiro(numConta_entrada, 10)
      escreva("deu certo!")
      Util.aguarde(1000)
    }

    limpa()
    escreva("Quanto será transferido para a conta N ", numConta_validado, "?\n")
    leia(qtdTransf)

    se (qtdTransf > saldo ou qtdTransf < 0) {
      limpa()
      escreva("Não é possível transferir essa quantia, retornando...")
      Util.aguarde(3000)
      inicio()
    } senao
      saldo -= qtdTransf
      escreva("Transferência de R$", qtdTransf, " feita com sucesso! retornando...")
      Util.aguarde(3000)
      inicio()
    }
  
  funcao inserirSenha() {
    inteiro senha

    limpa()
    escreva("Primeiramente, insira sua senha: ")
    leia(senha)

    se (senha != 3589) {
      limpa()
      escreva("Senha inválida, tente novamente...")
      Util.aguarde(3000)
      inicio()
    } senao {
      limpa()
      escreva("Autorizado! prosseguindo...\n")
      Util.aguarde(3000)
    }
  }

	funcao erro() {
    limpa()
		escreva("Opção Inválida, retornando...")
    Util.aguarde(3000)
    limpa()
		inicio()
	}

	funcao sair() {
    limpa()
		escreva(nome, ", foi um prazer ter você por aqui!")
	}
}
