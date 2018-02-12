class Card
  attr_accessor :value, :suit
  def initialize(value, suit)

    # 2, 3, 4, 5, 6, 7, 8, 9, 10, J=11, Q=12, K=13, A=14
    # Heart = 1, Spade = 2, Diamond = 3, Club = 4

    @value = value
    @suit = suit

  end

  # value setter
  def set_value(val)
    @value = val
  end

  # suit setter
  def set_suit(suit)
    @suit = suit
  end

  # value/suit setter
  def set_card(val, suit)
    @value = val
    @suit = suit
  end

  # numeric value getter
  def get_value
    return @value
  end

  # numeric suit getter
  def get_suit
    return @suit
  end

  # string suit getter
  def string_suit
    case @suit
      when 1
        return "Heart"
      when 2
        return "Spade"
      when 3
        return "Diamond"
      when 4
        return "Club"
    end
  end

  # string value getter
  def string_value
    case @value
      when 2..10
        return @value.to_s
      when 11
        return "J"
      when 12
        return "Q"
      when 13
        return "K"
      when 14
        return "A"
    end
  end
end