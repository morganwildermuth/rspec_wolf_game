require_relative '../lib/wolf'
ENV['RACK_ENV'] ||= 'test'
require "../app/models/pack"
require "../app/models/wolf"
require "../controller"
require "rack/test"

module FeatureSpec
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end


