require_relative "../../lib/card.rb"

describe "カード" do
  context "カード指定されている" do
    let(:card) do
      Card.new(2,"daiya")
    end
    it "コンソール上に指定したカードを表示する" do
      expect(card.number).to eq(2)
    end

  end
end
