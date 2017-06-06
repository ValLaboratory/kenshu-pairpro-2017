
class Card
  def initialize(number,suit)
    @number = number
    @suit = suit
  end

  attr_reader :number
  attr_reader :suit
end
