def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(tot_card)
  # code #display_card_total here
  puts "Your cards add up to #{tot_card}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_call = deal_card
  second_call = deal_card
  sum = first_call + second_call
  display_card_total(sum)
  return sum
end

def hit?(num)
  # code hit? here
  prompt_user
  val= get_user_input
  if val == "h"
    n_deal= deal_card
    num+= n_deal
  elsif val == "s"
   num
 else
   invalid_command
end
return num
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
  current_player_card_value = initial_round

  if current_player_card_value <= 21
    until current_player_card_value == 21 do
      player_card_value = hit?(current_player_card_value)
      display_card_total(player_card_value)
    if player_card_value < 21
      current_player_card_value = player_card_value
    else
      end_game(player_card_value)
      break
    end
  end
    else
      end_game(current_player_card_value)
  end
end
    
