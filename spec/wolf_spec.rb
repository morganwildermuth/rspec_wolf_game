require './spec_helper'

describe "wolf instance object" do
  it "on creation takes three parameters and returns a wolf object" do
    wolf = Wolf.new
    wolf.should be_an_instance_of Wolf
  end
end

describe "random name generator" do

  it "creates two distinct names" do
    random = Randomizer.new
    first_name = random.name
    second_name = random.name
    first_name != second_name
  end

  it "chooses randomly from two genders" do
    random = Randomizer.new
    one_gender = random.gender
    one_gender == 'm' || one_gender == 'f'
  end
end

describe "pack instance object" do
  it "on creation consists of two wolf objects" do
    pack = Pack.new
    pack.members.should have(2).wolves
  end

  it "can add a new wolf to pack" do
    pack = Pack.new
    
end