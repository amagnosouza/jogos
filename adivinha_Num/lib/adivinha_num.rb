require_relative 'inicializacao'
require_relative 'sortear_numero'

class AdivinhaNum
    # definir atributos
    attr_reader :numero
    attr_reader :venceu

    # definir metodo inicialize
    def initialize
        Inicializacao.inicializando
        @numero = SortearNumero.sortear  #chamar a classe que irá realizar o sorteio do numero.
        @venceu = false
    end

    def adivinha(numero = 0)
        if numero == @numero
            @venceu = true
            return "Você ganhou!"
        elsif numero > @numero
            return "O numero é muito alto"
        else
            return "O numero é muito baixo"
        end
    end
end