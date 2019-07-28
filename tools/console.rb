require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

hank = Mechanic.new("Hank", "antique")
yuri = Mechanic.new("Yuri", "exotic")
lani = Mechanic.new("Lani", "clunker")

shelly = CarOwner.new("Shelly", hank)
roy = CarOwner.new("Roy", yuri)
ned = CarOwner.new("Ned", lani)

royce = Car.new(shelly, "royce","S3","antique")
ferrari = Car.new(roy, "ferrari", "458", "exotic")
ford = Car.new(ned,"ford", "GT", "clunker")



binding.pry
potato