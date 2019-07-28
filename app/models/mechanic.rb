class Mechanic
#DONE
attr_accessor :name, :specialty
@@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end
# a list of all mechanics
def self.all 
  @@all
end
#a list of all cars that a mechanic services
def services
  Car.all.find do |c| 
    c.classification == self.specialty
  end
end

#a list of all the car owners that go to a specific mechanic
def carowners
  CarOwner.all.each do |c|
    c.mechanic == self
  end
end

#a list of the names of all car owners who go to a specific mechanic
def carowner_names
  CarOwner.all.select do |c|
    if c.mechanic == self
    c.name
    end
  end
end

end
