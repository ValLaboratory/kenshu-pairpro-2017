# ブラックジャック
require_relative "../../lib/black_jack.rb"


describe "Playerクラスは" do
  before do
    @player1 = Player.new
  end
  context "２つの数字を受け取り" do
    it "calculateすると、和を返す" do
      @player1.get_card(2)
      @player1.get_card(3)
      expect(@player1.calculate).to eq(5)
    end
  end
  context "1が入ってるときは" do
    it "11として計算する" do
      @player1.get_card(1)
      @player1.get_card(10)
      expect(@player1.calculate).to eq(11)
    end
  end
end
