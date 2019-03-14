def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(score)
  # code #display_card_total here
  puts "Your cards add up to #{score}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp.strip
end

def end_game(score)
  # code #end_game here
  puts "Sorry, you hit #{score}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  opening_round = deal_card + deal_card
  display_card_total(opening_round)
  opening_round
end

def hit?(score)
  # code hit? here
  prompt_user
  input = get_user_input
  until input == "s" || input == "h"
    invalid_command
    prompt_user
    input = get_user_input
  end
  if input == "h"
    score += deal_card
  elsif input == "s"
    score
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  score = initial_round
  until score > 21
    score = hit?(score)
    display_card_total(score)
  end
end_game(score)
end
