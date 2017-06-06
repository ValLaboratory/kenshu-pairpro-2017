class Player
  def initialize(name)
    @name = name
    @hands = []
  end

  def add_card(card)
    @hands << card
  end

  def show_hands()
    cards = []
    @hands.each do |card|
      cards << card.show
    end
    cards.join(",")
  end

  def calc_point()
    point = 0
    @hands.sort!{|a,b| b.rank <=> a.rank}

    @hands.each do |card|
      if card.rank == 1
        if point + 11 >= 22
          point += 1
        else
          point += 11
        end
      elsif card.rank >= 11
        point += 10
      else
        point += card.rank
      end
    end
    return point
  end

  attr_reader :name, :hands
end
