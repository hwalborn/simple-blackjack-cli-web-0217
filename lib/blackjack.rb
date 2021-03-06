require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  starting_hand = deal_card + deal_card
  display_card_total(starting_hand)
  starting_hand
end

def hit?(current_total)
  prompt_user
  choice = get_user_input
  if choice == "s"

  elsif choice == "h"
    current_total += deal_card
  else
    invalid_command
  end
  current_total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  while hand <= 21
    hand = hit?(hand)
    display_card_total(hand)
  end
end_game(hand)
end
