user_score = 0
computer_score = 0
rounds = 0
puts "Hello\n Would you like to play a game?...\n"
sleep 1
puts "It's called Rock Paper Scissors\n"
sleep 1
print "\n........Rules........\n"
puts "\n You are playing against the computer\n"
sleep 1
puts "\n First player to win two rounds wins the game\n"
sleep 1

while true
  if user_score == 2 || computer_score == 2
    break
  end
  computer_choice = %w[scissors rock paper][rand(3)]
  puts "\n Chose rock (r), paper (p), scissors (s)"
  user_choice = gets.chomp
  while user_choice != ('r') &&
    user_choice != ('p') &&
    user_choice != ('s')
    puts "Sorry, that is not 'r','p','s'"
    puts "\n Chose rock (r), paper (p), scissors (s)"
    user_choice = gets.chomp
  end

user =
  case [user_choice]
  when ['r']
  user_response = 'rock'
  when  ["s"]
  user_response = 'scissors'
  when ["p"]
  user_response = 'paper'
end
  puts "Computer picked: #{computer_choice}"
  puts "you picked #{user}"

win =
case [user, computer_choice]
     when ['rock','rock'], ['paper','paper'], ['scissors', 'scissors']
     rounds += 1
    'Tie!!!'
     when ['rock', 'scissors'], ['scissors', 'paper',], ['paper', 'rock']
     user_score += 1
     rounds += 1
     puts "#{user.upcase} beats #{computer_choice}, Player wins the round"
     when ['paper', 'scissors'], ['scissors', 'rock'], ['rock', 'paper']
     computer_score += 1
     rounds += 1
     puts "#{computer_choice.upcase} beats #{user}, Computer wins the round"
end
  puts "Round: #{rounds}"
  puts win
  puts "Player Score: #{user_score}, Computer Score: #{computer_score}"
end
