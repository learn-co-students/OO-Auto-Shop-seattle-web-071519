class CarOwner

  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics #for each car carowner has return 
    #mechanic with matching specialty
    car_classifications = self.cars.collect {|car| car.classification}
    Mechanic.all.select {|mechanic| car_classifications.include? mechanic.specialty}
  end

  def self.average_cars
    cars = Car.all.map {|car| car.owner }
    car_count = Hash.new(0)
      cars.each {|car| car_count[car] += 1}
    total_cars = car_count.values.inject { |a, b| a + b }
    total_owners = CarOwner.all.count 
    average_cars = total_cars/total_owners.to_f

    # binding.pry
  end






end
