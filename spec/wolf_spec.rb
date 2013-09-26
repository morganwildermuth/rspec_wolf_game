require './spec_helper'

# describe "wolf instance object" do
#   it "on creation takes three parameters and returns a wolf object" do
#     wolf = Wolf.new
#     wolf.should be_an_instance_of Wolf
#   end
# end

# describe "random name generator" do

#   it "creates two distinct names" do
#     random = Randomizer.new
#     first_name = random.name
#     second_name = random.name
#     first_name != second_name
#   end

#   it "chooses randomly from two genders" do
#     random = Randomizer.new
#     one_gender = random.gender
#     one_gender == 'm' || one_gender == 'f'
#   end
# end

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