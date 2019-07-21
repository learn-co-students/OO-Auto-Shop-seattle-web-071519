require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner_one = CarOwner.new("Fozzy")
owner_two = CarOwner.new("Gonzo")
owner_three = CarOwner.new("Miss Piggy")

mechanic_one = Mechanic.new("George", "antique")
mechanic_two = Mechanic.new("Crystal", "exotic")
mechanic_three = Mechanic.new("Jean", "clunker")
mechanic_four = Mechanic.new("Tracy", "antique")



car_one = Car.new("test", "abc", "antique", owner_one, mechanic_one)
car_two = Car.new("a", "b", "exotic", owner_three, mechanic_two)
car_three = Car.new("ford", "pinto", "clunker", owner_two, mechanic_three)
car_four = Car.new("blah", "blah", "antique", owner_one, mechanic_one)
car_five = Car.new("hey", "there", "antique", owner_three, mechanic_four)




binding.pry
