require_relative "../../lib/dealer.rb"

describe "Dealerクラスの" do
  before do
    @dealer = Dealer.new("iizuka")
  end
  describe "dealメソッドは" do
    before do
      @card = @dealer.deal
    end
    context "山札が５２枚の時" do
      it "カードを一枚渡す" do
        expect(@card.class).to eq(Card)
      end
      it "山札が５１枚になる" do
        expect(@dealer.deck.length).to eq(51)
      end
    end
  end
end
