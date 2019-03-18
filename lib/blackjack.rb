#goal of the game is to have a card total of, or very close to, but never exceeding, 21.

#To start, a player gets dealt two cards, each of which have values between 1-11. Then, the player is asked if they want to "hit" (get another card dealt to them), or "stay".

#If they hit, they get dealt another card. If the sum of their three cards exceeds 21, they've lost. If it does not, they can decide to hit or stay again FOREVER.

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  userInput = gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  start_of_game = deal_card + deal_card
  display_card_total(start_of_game)
  return start_of_game
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(card_total)
   prompt_user
   input = get_user_input
    until input == 'h' || input == 's'
      invalid_command
      prompt_user
      input = get_user_input
    end
  if input == 'h'
    card_total += deal_card
  elsif input == 's'
    card_total
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end

    
# Welcome the user
# Deal them their first two cards, i.e. their initial_round
# Ask them if they want to hit or stay
# If they want to hit, deal another card
# If they want to stay, ask them again!
# If their card total exceeds 21, the game ends.