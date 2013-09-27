ENV['RACK_ENV'] = 'test'
require '../controller'
require 'test/unit'
require 'rack/test'
require_relative '../app/models/pack'
require_relative "../app/models/wolf"


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

describe "new user core capabilities" do
  before(:each) do
    wolf = Wolf.create(name: "Test_Wolf")
    pack = Pack.create(name: "Test_Pack")
  end

  it "creates new wolf" do
   wolf.name === "Test_Wolf"
  end

  it "creates new pack" do
    pack.name === "Test_Pack"
  end

  it "places wolf in new pack" do
    wolf.pack = pack
    wolf.save
    wolf.pack_id == pack.id
  end

  after(:each) do
    Wolf.delete(wolf.id)
    Pack.delete(pack.id)
  end
end