def fav_foods
    food_array = []
    3.times do 
        puts "Name a fav food?"
        food_array << gets.chomp
        p food_array
        food_array.each { |food| puts "I like #{food} too"}
        puts "Your fav foods are #{food_array.join(", ")}"
    end
end

fav_foods
