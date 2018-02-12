require_relative 'card'
require_relative 'deck'

class Poker_hand
  attr_accessor :cards

  def initialize
    @cards = []
  end

  # because I like to see my cards in order
  def sort
    sorting_vals = []
    sorting_suits = []

    @cards.each do |card|
      sorting_vals << card.value
      sorting_suits << card.suit
    end

    sorting_vals.sort!
    sorting_suits.sort!

    i = 0
    while i < 5
      @cards[i] = Card.new(sorting_vals[i], sorting_suits[i])
      i += 1
    end

  end

  # This is for draw poker. Could maybe be used for hold 'em as well
  def change_card(index, card)
    @cards[index] = card
  end
  
  # in case of a pair, two pair, or three of a kind
  def get_kicker
    # TODO
  end

  # get the cards in hand
  def get_cards
    return @cards
  end

  # get a specific card
  def get_card(index)
    return @cards[index]
  end

  def get_ranking

    # TODO: create method to generate hand value
    # royal flush = 10
    # straight flush = 9
    # four of a kind = 8
    # full house = 7
    # flush = 6
    # straight = 5
    # three of a kind = 4
    # two pair = 3
    # pair = 2
    # high card = 1

  end

end