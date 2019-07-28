class Car
#DONE
  attr_accessor :owner, :make, :model, :classification
  @@all = []

  def initialize(owner, make, model, classification)
    @owner = owner
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end
#a list of all the cars
  def self.all
    @@all
  end
# a list of all car classifications
  def classifications #YES
    Car.all.map do |c|
      c.classification
   #select will still output entire car array, .map or .collect puts out just the stuff 
   #that match 'c.classification'/ new list of what we want
    end
  end

#list of mechanics that have an expertise that matches the car classification
  def mechanic_match #YES
    Mechanic.all.select do |m|
      m.specialty == classification
    end
  end

end
