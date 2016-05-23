class Cat
    attr_reader :color, :breed, :name #call classes outside of method
    attr_writer :name                #change and call classes outside of method
    
    def initialize(color, breed)
        @color = color
        @breed = breed
        @hungry= true
    end

    
    def feed(food)
        puts "Mmmm, " + food + "!"
        @hungry = false
    end
    
    def hungry?
        if @hungry
            puts "Im hungry"
        else
            puts "Im full"
        end
        @hungry
    end
    
    def speak
        puts 'Meow!'
    end
end

kitty = Cat.new('orange', 'tabby')
kitty.name = 'snowball'

puts "kittys name?"
puts kitty.name
puts "Is our cat hungry now?"
kitty.hungry?
puts "feed the cat"
kitty.feed('tuna')
puts "kitty hungry still?"
kitty.hungry?
puts "Here kitty kitty..."
kitty.speak
    