
class Deck

  def initialize
    @draw_card = {}
  end

  def draw(num = nil)

    if num
      draw_num = num
    else
      draw_num = rand(1..13)
    end

    unless @draw_card[draw_num]
      @draw_card[draw_num] = 1
      return draw_num
    end

    if @draw_card[draw_num] < 4
      @draw_card[draw_num] = @draw_card[draw_num] + 1
      return draw_num
    end

    nil
  end

end

class Player

  def initialize
    @hand = []
  end

  def get_card(card)
    @hand << card
  end

  def calculate
    #変換
    convert_hand = @hand.map do |card|
      case card
      when 11..13
        10
      else
        card
      end
    end
    #全部たす
    sum  = convert_hand.sum
    if @hand.include?(1) && sum + 10 <= 21
      sum + 10
    else
      sum
    end
  end

end

# インスタンス生成
mydeck = Deck.new
player1 = Player.new

# ２枚引く
player1.get_card(mydeck.draw)
player1.get_card(mydeck.draw)

player1.calculate
