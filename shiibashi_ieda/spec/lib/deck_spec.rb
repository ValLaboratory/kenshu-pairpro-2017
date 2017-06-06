require_relative "../../lib/deck.rb"

describe "デッキ" do
  context "デッキがある" do
    let(:deck) do
      Deck.new()
    end
    it "カードが52枚ある" do
      expect(deck.cards.length).to eq(52)
    end
    it "カードを一枚引く" do
      expect(deck.pick().kind_of?(Card)).to eq(true)
    end

  end
end
