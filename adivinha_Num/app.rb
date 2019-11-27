require_relative 'lib/adivinha_num'

jogo = AdivinhaNum.new
# loop para repetir a pergunta e pegar o valor do numero digitado até acertar o valor do RANDOM
until jogo.venceu do
    puts "Digite um numero de 1 a 100: "
    numero = gets.chomp.to_i
    # imprime o resultado do teste advinha
    puts jogo.adivinha(numero)
end