class Car

  attr_reader :make, :model, :owner, :mechanic, :classification
  @@all = []

  #adding owner and mechanic at initialization so I can relate
  #cars to owners and cars to mechanics
  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.list_classifications
    self.all.collect do |car|
      car.classification
    end
    #duplicates show up, could do uniq to have each 
    #classication listed once or turn into a hash with counts for
    #how many cars have each classification
  end

  def mechanics
    #get a list of mechanics that specialize in this car classification
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end
