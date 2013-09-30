$LOAD_PATH.unshift(File.expand_path('./app'))
ENV['RACK_ENV'] = 'test'
require 'rack/test'
require_relative '../db/config'
require_relative '../controller'


describe "new user core capabilities" do
  include Rack::Test::Methods

  def app 
    Sinatra::Application
  end

  before(:all) do
    @wolf = Wolf.create(name: "Test_Wolf")
    @pack = Pack.create(name: "Test_Pack")
  end

  it "creates new wolf" do
    @wolf.name === "Test_Wolf"
  end

  it "creates new pack" do
    @pack.name === "Test_Pack"
  end

  it "places wolf in new pack" do
    @wolf.pack = @pack
    @wolf.save
    @wolf.pack_id == @pack.id
  end

  after(:all) do
    Wolf.delete_all
    Pack.delete_all
  end
end

describe "start page" do
  include Rack::Test::Methods

  def app
    Sinatra::Applcication
  end

  it 'displays relevant pack info' do
    Wolf.create(name: 'Test_Wolf', gender: male, health: 100)
    get '/start'
    assert last_response.ok?
    asset_equal 'Test_Wolf, male, 100'
  end
end