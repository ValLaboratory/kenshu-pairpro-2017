require './deck.rb'

describe "drawメソッドは、" do

  context "山札からカードを一枚引いた時、" do
    it "返り値がnilではないか。" do
      deck = Deck.new
      #deck.distribute()
      expect(deck.distribute()).not_to be_nil
    end
  end
  context "カードを５２マイ引いた時に" do

    it "かぶるカードはないか" do
      deck = Deck.new
      52.times do
        deck.distribute
      end

      p deck.distributed_cards.uniq.length == 52
      expect(deck.distributed_cards.uniq.length == 52).to be_truthy

    end

  end
end
