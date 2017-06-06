describe “drawメソッドは、” do

  context “山札からカードを一枚引いた時、” do
    it “カード名を表示する。” do
      expect(draw(YY)).to eq("")
    end
  end

  context “山札と手札に同じカードがある場合は、” do
    it “falseが返される。” do
      expect(XX(YY)).to falser
    end
  end

end
