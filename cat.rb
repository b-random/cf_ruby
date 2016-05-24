class Pet
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
end

class Cat < Pet
    def speak
        puts 'Meow'
    end
end

class Dog < Pet
   def speak
       puts 'Woof'
   end
end

kitty = Cat.new('orange', 'tabby')
kitty.name = 'snowball' #define name outside method due to attr_writer, or attr_accessor

pup = Dog.new('brown', 'lab')
pup.name = 'buster'

puts "kittys name?"
puts kitty.name #not method, called with puts
puts "What is the pups name?"
pup.name
puts "Is our cat hungry now?"
kitty.hungry?
puts "feed the cat"
kitty.feed('tuna')
puts "kitty hungry still?"
kitty.hungry?
puts "Feed the dog"
pup.feed('peanut butter')
pup.hungry?
puts "Here kitty kitty..."
kitty.speak
    