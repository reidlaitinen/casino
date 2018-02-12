require 'pry'

require_relative 'deck'
require_relative 'card'
require_relative 'poker_hand'

@deck = Deck.new


def show_deck
  @deck.show.each_with_index do |card, i|
    puts "\t\t#{i}) #{card.string_value}, #{card.string_suit}"
  end
end


puts "Here's the initialized deck: "
show_deck
@deck.shuffle
puts "Here's the shuffled deck: "
show_deck

puts 
  

@my_hand = Poker_hand.new
@opp_hand = Poker_hand.new

def deal
  i = 0
  while i < 5
    @my_hand.change_card(i, @deck.pull_card(0))
    @opp_hand.change_card(i, @deck.pull_card(0))
    i += 1
  end
end

deal

# @my_hand.sort
# @opp_hand.sort

def show(hand)
  i = 0
  while i < 5
    puts "\t\t#{hand.get_card(i).string_value} of #{hand.get_card(i).string_suit}"
    i += 1
  end
end

puts "\tMy hand:"
puts "#{show(@my_hand)}"
puts "\tOpponent hand:"
puts "#{show(@opp_hand)}"

puts "And here's the deck after dealing these two hands:"
show_deck