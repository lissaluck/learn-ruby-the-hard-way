## Animal is-a object
class Animal
end

## Dog is-a Animal
class Dog < Animal
  
  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal
  
  def initialize(name)
    ## cat has-a name
    @name = name
  end
end

## Person is-a object
class Person
  
  def initialize(name)
    ## Person has-a name
    @name = name
    
    ## Person has-a pet of some kind
    @pet = nil
  end
  
  attr_accessor :pet
end

## Employee is-a Person
class Employee < Person
  
  def initialize(name, salary)
    ## Employee has-a name because class named Employee is-a Person
    super(name)
    ## Employee has-a salary
    @salary = salary
  end
  
end

## fish is-a object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Make a class named Halibut that is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a cat
satan = Cat.new("Satan")

## mary is-a Person 
mary = Person.new("Mary")

## mary has-a pet satan
mary.pet = satan

## frank is-a Employee with the parameters "Frank", 120000
frank = Employee.new("Frank", 120000)

# frank has-a pet rover
frank.pet = rover

## flipper is-a fish
flipper = fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()