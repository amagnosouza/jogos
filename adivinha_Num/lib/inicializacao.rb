require 'tty-cursor' # importa a gem

class Inicializacao
    # definir metodo
    def self.inicializando
        system('clear') # comando para limpar a tela

        cursor = TTY::Cursor
        print cursor.move_to(50,10)

        print "Inicilizando."
        5.times do |i|
            sleep 1
            print "."
        end
        puts "."
        system ('clear')
        File.open(File.expand_path('../../ascii/name_game.txt', __FILE__), 'r') do |arq|
            while line = arq.gets
                puts line
            end
        end
        sleep 1
    end
end