require_relative "../../lib/card.rb"

describe "Cardクラスの" do
  describe "showメソッドは" do
    context "マークがハートでランクが１１の時" do
      it "h１１の文字列を返す" do
        card = Card.new("h", 11)
        expect(card.show).to eq("h11")
      end
    end
  end
end
