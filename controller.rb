require 'sinatra'
require_relative 'app/models/pack'
require_relative 'app/models/wolf'

get '/' do
  erb :index
end