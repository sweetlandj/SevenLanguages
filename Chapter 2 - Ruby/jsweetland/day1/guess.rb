begin
    my_number = rand(10)
    puts 'Guess my number!'
    begin
        guess = gets.to_i
        if guess != my_number
            puts 'Nope!  Guess again!'
        else
            puts 'Witchcraft!  Play again? [yN]'
            play_again = gets.upcase
        end
    end until guess == my_number
end until play_again != 'Y'