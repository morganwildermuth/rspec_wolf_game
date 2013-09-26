ENV['RACK_ENV'] = 'test'
require '../controller'
require 'test/unit'
require 'rack/test'

class IndexTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_creates_a_wolf
    post '/new_game', params={name: "Test_Wolf"}
    assert last_response.ok?
    assert_equal 'Hello World', last_response.body
  end

  def test_it_creates_a_pack
    get '/', :name => 'Simon'
    assert last_response.body.include?('Simon')
  end

  def test_it_sets_new_wolf_pack_to_new_pack
  end
end