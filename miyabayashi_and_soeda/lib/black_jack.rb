
class Deck

  def draw
    rand(1..13)
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

    # 変換
    convert_hand = @hand.map do |card|
      if card == 1
        11
      else
        card
      end
    end

    #全部たす
    convert_hand.sum

  end

end

# インスタンス生成
mydeck = Deck.new
player1 = Player.new

# ２枚引く
player1.get_card(mydeck.draw)
player1.get_card(mydeck.draw)

player1.calculate
