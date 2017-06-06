class Card
  def initialize(suit, rank)
    #クラスの中ならどこでも使える（インスタンス変数）
    @suit = suit
    @rank = rank
  end

  def show()
    #変数の値を複数繋げて文字列で返す時
    return "#{@suit}#{@rank}"

  end
  attr_reader :suit,:rank
end
