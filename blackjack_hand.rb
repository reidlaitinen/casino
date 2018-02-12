require_relative 'deck'
require_relative 'card'

attr_accessor :cards
def initialize
  @cards = []
end

def get_total
  # need logic to discern whether an Ace is 11 or 1
end

# I like to live dangerously
def hit (card)
  @cards << card
end