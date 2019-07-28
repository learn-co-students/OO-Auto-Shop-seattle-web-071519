require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
stan = CarOwner.new("Stan")
mona = CarOwner.new("Mona")
john = CarOwner.new("John")
walt = CarOwner.new("Walt")

ford_1 = Car.new(stan,"ford", "mustang", "American")
ford_2 = Car.new(mona,"ford","f-150", "American")
bmw_1 = Car.new(john,"bmw", "m3", "German")
bmw_2 = Car.new(walt,"bmw", "325","German")
honda_1 = Car.new(stan, "honda", "civic", "Japanese")
nio_1 = Car.new(stan, "nio", "1","Chinese")
joe = Mechanic.new("Joe", "American")
hans = Mechanic.new("Hanz", "German")
kiki = Mechanic.new("Kiki", "Japanese")
chan = Mechanic.new("Chan", "Chinese")


binding.pry
