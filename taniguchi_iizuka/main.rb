require_relative "./lib/dealer.rb"
require_relative "./lib/player.rb"
require_relative "./lib/card.rb"

dealer = Dealer.new("iizuka")
player = Player.new("taniguchi")

2.times do
  player.add_card(dealer.deal)
end

puts player.show_hands
