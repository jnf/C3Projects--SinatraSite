require "sinatra"
require "sinatra/reloader"
require './lib/kitties'

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    @kitties = Kitties::Kitty.all_the_cats
    erb :index
  end

  get "/kitty/:name" do
    @kitty  = Kitties::Kitty.new(params[:name])
    @title  = "Nice to meet you, #{ @kitty.name }"

    erb :kitty
  end
end
