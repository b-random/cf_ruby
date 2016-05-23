def choose
    puts "Do you like programming? Yes or no?"
    choice=gets.chomp
    case choice.downcase
    when "yes"
        puts "That's great"
    when "no"
        puts "That's too bad"
    when "maybe"
        puts "make up your mind"
    else 
        puts "That wasn't a yes or no"
    end
end

choose