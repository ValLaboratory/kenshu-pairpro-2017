require './deck.rb'
require './hand.rb'

describe "drawメソッドは、" do

  context "山札からカードを一枚引いた時、" do
    it "自分の手札が一枚以上である" do
      deck = Deck.new
      me = Hand.new

      me.draw(deck)

      #deck.distribute()
      expect(me.my_cards.length).to eq(1)
    end
    it "自分の得点が1以上である" do
      deck = Deck.new
      me = Hand.new

      me.draw(deck)

      expect(me.sum_points > 0).to eq(true)
    end
  end
end
