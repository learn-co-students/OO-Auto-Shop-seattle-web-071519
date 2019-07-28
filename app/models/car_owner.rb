class CarOwner

  attr_accessor :name, :mechanic
  @@all = []

  def initialize(name, mechanic)
    @name = name
    @mechanic = mechanic
    @@all << self
  end
#list of all owners
  def self.all
    @@all
  end
#list of all the cars that a 
#specific owner has
  def car_list #YES, I THINK.
    Car.all.find_all do |c| 
      c.owner == self
    end
  end

  #a list of all the mechanics that a specific owner goes to
  def mechanic #YES, I THINK.
    Mechanic.all.find do |m|
      m.name == self
      m.name
    end
  end

#the average amount of cars owned for all owners
#aka. total cars/total owners
#this is a Class method?!? #YES.
def self.car_average
  avg = Car.all.length/CarOwner.all.count
  avg.to_f
end

end


