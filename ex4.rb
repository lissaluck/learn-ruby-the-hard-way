# Says that there are 100 cars available.
cars = 100
# There is space in each car for 4 passengers, no more.
space_in_a_car = 4.0
# There are 40 available drivers.
drivers = 30
# There are 90 passengers who need to be transported.
passengers = 90
# This calculates how many cars won't be driven.
cars_not_driven = cars - drivers
# This specifies how many drivers will be needed.
cars_driven = drivers
# This calculates how many passengers can be driven based off the number of cars
# and the spaces in them.
carpool_capacity = cars_driven * space_in_a_car
# This determines about how many people will be in each car.
average_passengers_per_car = passengers / cars_driven


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."