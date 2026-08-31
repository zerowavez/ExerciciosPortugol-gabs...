import java.math.BigDecimal // essa é uma importação de um tipo para o cálculo de média
import java.math.RoundingMode // essa é uma importação para arredondar o cálculo de média
import java.text.Normalizer

// esse é um arquivo biblioteca, contém várias funções recorrentes com base nas necessidades dos exercícios

// função para ler números inteiros, com tratamento de exceções. retorna um int.
// leva três parâmetros: mensagem (obrigatória) que será mostrada ao utilizador
// número mínimo e máximo, para casos onde números negativos são proibidos
fun readInt(
    mensagem: String,
    minimo: Int? = null,
    maximo: Int? = null
): Int {
    // laço que garante execução até alguma entrada ser válida
    while (true) {
        print(mensagem)
        // constante que recebe a entrada e já checa se está vazia
        val entrada = readlnOrNull() ?: continue

        // constante que recebe a conversão da entrada para int
        val numero = entrada.toIntOrNull()

        // tratamento da primeira exceção null também engloba entrada
        // que não pode ser convertida para int
        if (numero == null) {
            println("Erro: Valor inválido... ")
            continue
        // checa se número é menor que o mínimo
        } else if (minimo != null && numero < minimo) {
            println("Erro: Valor deve ser pelo menos $minimo ")
            continue
        // checa se o número excede o máximo
        } else if (maximo != null && numero > maximo) {
            println("Erro: Valor deve ser no máximo $maximo ")
            continue
        }
        // retorna o número caso entrada esteja correta
        return numero
    }
}

// mesma lógica
fun readDouble(
    mensagem: String,
    minimo: Double? = null,
    maximo: Double? = null
): Double {

    while (true) {
        print(mensagem)

        val entrada = readlnOrNull() ?: continue

        val numero = entrada.toDoubleOrNull()

        if (numero == null) {
            println("Erro: Valor inválido... ")
            continue
        } else if (minimo != null && numero < minimo) {
            println("Erro: Valor deve ser pelo menos $minimo ")
            continue
        } else if (maximo != null && numero > maximo) {
            println("Erro: Valor deve ser no máximo $maximo ")
            continue
        }
        return numero
    }
}

// mesma lógica
fun readString(
    mensagem: String,
    minChar: Int? = null,
    maxChar: Int? = null
): String {
    while (true) {
        print(mensagem)
        val entrada = readln()
        val larguraEntrada = entrada.length

        if (minChar != null && larguraEntrada < minChar) {
            println("Erro: Texto inserido deve ter ao menos $minChar caractere(s)! ")
            continue
        } else if (maxChar != null && larguraEntrada > maxChar) {
            println("Erro: Texto inserido excede o máximo de $maxChar caracteres! ")
            continue
        }

        return entrada
    }
}

// função que lê a escolha do usuário, leva como parâmetro uma mensagem, opção verdadeira e falsa
// retorna verdadeiro ou falso baseado na opção escolhida
fun readUserOption(
    mensagem: String,
    opVerdadeira: String,
    opFalsa: String
): Boolean {
    while (true) {
        println("$mensagem ($opVerdadeira/$opFalsa): ")

        // faz o tratamento da entrada, checa se é vazio
        // depois converte para maiúscula e por último pega apenas o primeiro caractere
        val inputChar = readlnOrNull()?.trim()?.firstOrNull()?.uppercase()?.take(1)

        // primeiro check garante que não é vazio ou algo fora das opções específicadas
        if (inputChar == null || inputChar != opFalsa && inputChar != opVerdadeira) {
            println("Erro: Valor inválido... ")
            continue
        } else if (inputChar == opVerdadeira) {
            return true
        } else if (inputChar == opFalsa) {
            return false
        }
    }
}

// função que calcula a média leva um array de números reais como parâmetro, retorna um número real
fun calcularMedia(
    notas: DoubleArray
): Double {
    // pegamos a soma do array com .sum(), dividimos pelo total de entradas (.size)
    val media: Double = notas.sum() / notas.size

    // arredondamos a media para que ela fique com só uma casa decimal
    // para isso convertemos ao BigDecimal, tipo nativo do java, então requer importação
    // usamos o comando setScale com a escala de 1 e o modo de arredondamento HALF_UP
    // depois convertemos para double novamente
    val mediaArrendodada = media
        .toBigDecimal()
        .setScale(1, RoundingMode.HALF_UP)
        .toDouble()

    return mediaArrendodada
}

// adicionando uma nova função "intrínseca" a qualquer tipo string
fun String.removerAcentos(): String {
    // chama a função normalize do java e aplica o tratamento de texto "decomposição canônica" nele
    // efetivamente desmembrando caracteres com acento, por exemplo: "Júpiter" vira "Jupiter´"
    val normalizado = Normalizer.normalize(this, Normalizer.Form.NFD)
    // mapeia todos os acentos encontrados na entrada normalizada
    val regex = Regex("\\p{InCombiningDiacriticalMarks}+")
    // encontra o(s) último(s) caractere(s) da string (agora um acento) e remove ele, depois retorna
    return regex.replace(normalizado, "")
}
