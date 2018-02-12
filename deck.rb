require_relative 'card'

class Deck
  attr_accessor :cards

  # initialize should create a deck
  # with {2-A}{Diamonds, Hearts, Clubs, Spades}

  def initialize
    @cards = []
    suit = 1
    value = 2
    while suit < 5
      while value < 15
        @cards.push(Card.new(value, suit))
        value += 1
      end
      suit += 1
      value = 2
    end

  end

  # Deck getter
  def show
    return @cards
  end

  # Take a card out of the deck
  def deal_card(index)
    card = @cards[index]
    @cards.delete_at(index)
    return card
  end

  # Put a card into the deck
  def push_card(card)
    @cards.push(card)
  end

  # Shuffle the deck
  def shuffle
    return @cards.shuffle!
  end


end