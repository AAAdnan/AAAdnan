=begin
# Pseudo-code:
# 1. Print welcome
# 2. Create Horse array
# 3. Recieve user's bet
# 4. Run the race 🐴
# 5. Print results

=end

answer = 'y'

until answer == 'n'

  puts "Welcome to the horse race game!"

  horse_array = ['Red Rum', 'Tinkerbell', 'Filho da puta', 'Varenne']

    horse_array.each_with_index do |horse, index|
      puts "#{index + 1}. #{horse}"
    end

puts "Which horse do you like? Please choose a number from 1 to #{horse_array.length}?"
answer_horse = gets.chomp.to_i

winner = rand(1..horse_array.size)

  if answer_horse == winner
    puts "Winner is #{winner} Congratulations!"
  else
    puts "Winner is #{winner} Sorry!"
  end

puts "Would you like to play again (y or no)? "
answer = gets.chomp
end
