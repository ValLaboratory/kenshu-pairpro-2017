# ブラックジャック
require_relative "../../lib/black_jack.rb"

describe "Deckクラスは" do
  context "同じ数字を" do
    it "５回目は引けない" do
      mydeck= Deck.new
      expect(mydeck.draw(2)).to eq(2)
      expect(mydeck.draw(2)).to eq(2)
      expect(mydeck.draw(2)).to eq(2)
      expect(mydeck.draw(2)).to eq(2)
      expect(mydeck.draw(2)).to eq(nil)
    end
  end
end

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
  context "J(11)からK(13)が入ってるとき" do
    it "10として計算する" do
      @player1.get_card(11)
      @player1.get_card(12)
      expect(@player1.calculate).to eq(20)
    end
  end
  context "1が1枚入ってるときは" do
    it "1を11として計算する" do
      @player1.get_card(1)
      @player1.get_card(10)
      expect(@player1.calculate).to eq(21)
    end
  end
  context "1が2枚入ってるときは" do
    it "1を１枚だけ11として計算する" do
      @player1.get_card(1)
      @player1.get_card(1)
      expect(@player1.calculate).to eq(12)
    end
  end
  context "Aと5と6を引いたら" do
    it "12になる" do
      @player1.get_card(1)
      @player1.get_card(5)
      @player1.get_card(6)
      expect(@player1.calculate).to eq(12)
    end
  end

end
