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
  describe "show_handsメソッドは" do
    context "手札がハートの１とスペードの１の時" do
      it "文字列「h1,s1」を返す" do
        @player.add_card(Card.new("h", 1))
        @player.add_card(Card.new("s", 1))
        expect(@player.show_hands).to eq("h1,s1")
      end
    end
  end
end
