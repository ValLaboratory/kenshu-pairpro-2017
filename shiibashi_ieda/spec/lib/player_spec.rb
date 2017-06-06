require_relative "../../lib/player.rb"
require_relative "../../lib/deck.rb"
require_relative "../../lib/card.rb"

describe "プレイヤー" do
  context "" do
    let(:deck) do
      Deck.new()
    end
    let(:player) do
      Player.new()
    end
    it "デッキからカードを２枚引いて見せる" do
      player.pick(deck)
      player.pick(deck)
      player.show()
      # expect(player.show().kind_of?(Card)).to eq(true)
    end


  end
end
