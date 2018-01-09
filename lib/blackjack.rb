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
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit? (current_total)
  prompt_user
  user_input = get_user_input
  if user_input == 's'
    current_total
  elsif user_input == 'h'
    current_total += deal_card
    current_total
  else
    invalid_command
  end
end

def invalid_command
  "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  inital_total = initial_round
  total = hit?(inital_total)
  display_card_total(total)
  if total > 21
    end_game(total)
  end
end
