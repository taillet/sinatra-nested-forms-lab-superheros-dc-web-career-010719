class SuperHero
  attr_accessor :name, :power, :bio
  @@all = []

  def initialize(name: name, power: power, bio: bio)
    @name  = name
    @power = power
    @bio   = bio
    @@all << self
  end

  def self.all
    @@all
  end
end
