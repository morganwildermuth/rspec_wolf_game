class Randomizer
  def name  
    first_name = ["Artful", "Blazing", "Crazy", "Determined", "Erring", "Faithful", "Gaping", "Hard", "Illusionary", "Jagged", "Killin'", "Light", "Mighty", "Noddin'", "Ol'", "Prideful", "Quiet", "Ragged", "Scarred", "Tiny", "Veiled", "White", "Zippy"]
    second_name = ["Apple", "Bone", "Color", "Deer", "Empire", "Friend", "Giant", "Hill", "Ink", "Jazz", "Kink", "Loner", "Moment", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y",]
    first_name.sample + " " + second_name.sample
  end

  def gender
    gender = ["f", "m"]
    gender[rand(0..1)]
  end
end

class Wolf
  def initialize(age = 0)
    random = Randomizer.new
    @name = random.name
    @age = age
    @gender = random.gender
  end
end

class Pack
  attr_reader :members
  def initialize
    @members = []
    2.times {
      @members<<Wolf.new
    }
  end
end


