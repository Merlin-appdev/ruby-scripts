#--------------------ROCK------------------------

desc "Play rock in rock-paper-scissors"
task :play_rock do

our_move = "We played rock!"  # Print the move we played

#Computer's Choice

random_number = rand(3)  # Select a random move for the computer

if random_number == 0
  computer_play = "Rock"
  their_move = "They played Rock"
  game_outcome = "We tied!"
  
  elsif random_number == 1
  computer_play = "Paper"
  their_move = "They played Paper"
  game_outcome = "We lost!"
  
  else random_number == 2
  computer_play = "Scissors"
  their_move = "They played Scissors"
  game_outcome = "We won!"
  
end

#Game Outcome

ap(our_move.to_s + "  " + their_move.to_s + "  " + game_outcome.to_s)

end


#--------------------PAPER------------------------

desc "Play paper in rock-paper-scissors"
task :play_paper do

our_move = "We played paper!"  # Print the move we played

#Computer's Choice

random_number = rand(3)  # Select a random move for the computer

if random_number == 0
  computer_play = "Rock"
  their_move = "They played Rock"
  game_outcome = "We won!"
  
  elsif random_number == 1
  computer_play = "Paper"
  their_move = "They played Paper"
  game_outcome = "We tied!"
  
  else random_number == 2
  computer_play = "Scissors"
  their_move = "They played Scissors"
  game_outcome = "We lost!"
  
end

#Game Outcome

ap(our_move.to_s + "  " + their_move.to_s + "  " + game_outcome.to_s)

end

#--------------------SCISSORS------------------------

desc "Play scissors in rock-paper-scissors"
task :play_scissors do

our_move = "We played scissors!"  # Print the move we played

#Computer's Choice

random_number = rand(3)  # Select a random move for the computer

if random_number == 0
  computer_play = "Rock"
  their_move = "They played Rock"
  game_outcome = "We lost!"
  
  elsif random_number == 1
  computer_play = "Paper"
  their_move = "They played Paper"
  game_outcome = "We won!"
  
  else random_number == 2
  computer_play = "Scissors"
  their_move = "They played Scissors"
  game_outcome = "We tied!"
  
end

#Game Outcome

ap(our_move.to_s + "  " + their_move.to_s + "  " + game_outcome.to_s)

end



