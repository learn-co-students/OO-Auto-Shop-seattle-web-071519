class Car

  attr_accessor :make, :model, :owner, :classification
  @@all = []

  def self.all
    @@all
  end

  def initialize(owner, make, model, classification)
    @owner = owner
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

end
