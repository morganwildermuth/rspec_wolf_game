require 'sinatra'
require_relative 'app/models/pack'
require_relative 'app/models/wolf'

get '/' do
  erb :index
end

post '/new_game' do
  starting_wolf = Wolf.create(name: params[:name], gender: params[:gender], age: 3, health: 100)
  starting_pack = Pack.create(name: params[:pack_name])
  starting_wolf.pack = starting_pack
  starting_wolf.save
end