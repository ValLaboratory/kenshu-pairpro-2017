SUITS = ["h","c","d","s"]
RANKS = [1,2,3,4,5,6,7,8,9,10,11,12,13]

class Dealer
  def initialize(name)
    @name = name
    @deck = []
    #カード５２枚を用意
    SUITS.each do |suit|
      RANKS.each do |rank|
        @deck << Card.new(suit,rank)
      end
    end
    #山札をシャッフル（shuffleメソッド）
    @deck.shuffle!
  end
  def deal()
    #先頭の要素を返してその要素を配列から削除
    @deck.shift
  end
  attr_reader :name, :deck
end
