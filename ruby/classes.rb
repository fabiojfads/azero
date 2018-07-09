
class Animal
    attr_accessor :nome, :cor, :raça
    
    def initialize(nome, cor, raca)
        @nome = nome
        @cor = cor
        @raca = raca
    end

    def comer(comida)
        puts comida
    end
end


class Cachorro < Animal
    
    def late
        puts @nome
        puts 'au, au'
    end
end

class Gato < Animal

    def mia
        puts @nome
        puts 'Miau, Miua'
    end
end

class Pato < Animal

    def grasna
        puts @nome
        puts 'Quack, quack'
    end
end

class Galinha < Animal

    def cacareja
        puts @nome
        puts 'Cocorico...'
    end
end
#Cachorro
snoop = Cachorro.new('Snoop', 'Preto e branco', 'Vira lata')
snoop.late
snoop.comer('Ração')

spike = Cachorro.new('Spike', 'Cinza', 'Buldogue')
spike.late
spike.comer('Bife')

#Gato
 tom = Gato.new('Tom', 'Cinza', 'Perça')
 tom.mia
 tom.comer('peixe')

 #Pato
patolino = Pato.new('Patolino', 'Preto', 'Não sei')
patolino.grasna
patolino.comer('milho')


#Galinha
pintadinha = Galinha.new('Pintadinha', 'Azul', 'Galinha')
pintadinha.cacareja
pintadinha.comer('minhoca')