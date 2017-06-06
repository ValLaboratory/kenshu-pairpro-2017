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

    deck = Deck.new
    hand = Hand.new

    hand.draw(deck)
    @points = hand.sum_points
    erb :draw_card
  end
end
