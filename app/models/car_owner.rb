class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    #get a list of all the cars owned
    Car.all.select do |car|
      car.owner == self
    end
  end

  #helper method to get number of cars
  def car_count
    self.cars.length
  end

  def mechanics
    #get a list of mechanics used
    #call self.cars and iterate through that list to
    #collect the mechanic attached to each car
    self.cars.collect do |car|
      car.mechanic
    end.uniq
  end

  def self.average_cars_owned
    #find out the average number of cars owned for all owners
    sum_cars = self.all.map do |owner|
      owner.car_count
    end.sum
    sum_cars / (self.all.length * 1.0)
  end


end
