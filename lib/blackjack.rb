def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
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
  deal_1 = deal_card
  deal_2 = deal_card
  card_total = deal_1 + deal_2
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  hit_or_stay = get_user_input 
    if hit_or_stay == "h"
      card_total += deal_card
    elsif hit_or_stay == "s"
      card_total
    else 
      invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round = card_total
  until card_total > 21
    
end
    
