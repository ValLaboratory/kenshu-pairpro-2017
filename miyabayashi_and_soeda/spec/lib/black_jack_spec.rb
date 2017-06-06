# ブラックジャック
require_relative "../../lib/black_jack.rb"


describe "calculateメソッドは" do
  context "２つの数字を受け取ったとき" do
    it "足し算を返す" do
      expect(calculate(2,3)).to eq(5)
    end
  end
  context "1が入ってるときは" do
    it "11として認識し計算する" do
      expect(calculate(1,2)).to eq(13)
      expect(calculate(10,1)).to eq(21)
    end
  end
end
