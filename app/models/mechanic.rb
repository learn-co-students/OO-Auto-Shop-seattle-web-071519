class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    #list of cars that mechanic works on
    #Car.all.select?
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def owners
    #list of owners that go to this mechanic
    #call cars method
    self.cars.collect do |car|
      car.owner
    end.uniq
  end

  def owner_names
    self.owners.collect do |owner|
      owner.name
    end
  end


end
