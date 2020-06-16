def welcome
puts "Welcome to the Blackjack Table"  # code #welcome here
end

def deal_card
   rand(1...11)
  # code #deal_card here
end

def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"

  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  prompt_user = gets.chomp

  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
sum = deal_card + deal_card
display_card_total(sum)
return sum


  # code #initial_round here
end

def hit?(current_total)
  prompt_user
  input = get_user_input
if input == 'h'
  current_total += deal_card
elsif input == 's'
return current_total
end
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  # code runner here	  welcome
  hand=initial_round
  until hand>21 do
    hand=hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
