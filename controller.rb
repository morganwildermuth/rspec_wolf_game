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
  redirect to('/start')
end

get '/start' do
  pack_id_number = Pack.last.id
  @wolves = Wolf.where(pack_id: pack_id_number)
  erb :start
end

post '/choose_location' do
  pack_id_number = Pack.last.id
  @wolves = Wolf.where(pack_id: pack_id_number)
  choice = params[:location]
  if choice == 'Old Forest'
    @wolves.map do |wolf| 
      wolf.health -= 5
      wolf.save
    end
  else
    @wolves.map do |wolf|
      wolf.health -= 10
      wolf.save
    end
  end
  redirect to('/start')
end