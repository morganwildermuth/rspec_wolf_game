require 'active_record'
require 'sinatra'
require 'sinatra/activerecord'

configure :test do 
  set :database, "sqlite3://db/testdb.sqlite3"
end

configure :development do
  set :database, "sqlite3:///wolf_sim.sqlite3"
end

configure :production do
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/wolf_sim')
end
