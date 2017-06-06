require_relative "../../lib/card.rb"

describe "Cardクラスの" do
  describe "showメソッドは" do
    #最初に実行される
    before do
      #インスタンス変数として定義している。
      @card = Card.new("h", 11)
    end
    context "マークがハートでランクが１１の時" do
      it "h１１の文字列を返す" do
        expect(@card.show).to eq("h11")
      end
    end
  end
end
