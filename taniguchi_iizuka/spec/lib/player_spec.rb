require_relative "../../lib/player.rb"

describe "Playerクラスの" do
  before do
    #インスタンス変数として定義している。
    @player = Player.new("taniguchi")
  end
  describe "add_cardメソッドは" do
    context "cardを渡すと" do
      it "手札に追加される。" do
        @player.add_card(Card.new("h", 11))
        expect(@player.hands.length).to eq(1)
      end
    end
  end
end
