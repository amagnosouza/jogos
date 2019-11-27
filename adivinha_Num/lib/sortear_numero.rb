class SortearNumero
    def self.sortear # metodo estatico da classe.
        #Random.rand(0..10) # Define o range de valores a serem escolhidos
        
        v = []

        File.open(File.expand_path('../../num.txt', __FILE__), 'r') do |arq|
            while line = arq.gets
                v.push(line.to_i)
            end
        end
        v.sample
    end
end