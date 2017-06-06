require "sinatra/base"
require "sinatra/reloader"
require "./deck.rb"
require "./hand.rb"

class SampleApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb :index
  end

  get "/draw_card" do

    cards = params[:cards].nil? ? [] : params[:cards].split(",")
    hands = params[:hands].nil? ? [] : params[:hands].split(",")

    deck = Deck.new(cards)
    hand = Hand.new(hands)

    hand.draw(deck)
    @cards = deck.distributed_cards.join(",")
    @hands = hand.my_cards.join(",")
    @points = hand.sum_points
    erb :draw_card

  end


end
