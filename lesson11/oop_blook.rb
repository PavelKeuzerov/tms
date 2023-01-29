# Взять задание с темы ООП и переписать методы с использованием блоков, Proc и lambda 
# Создать иподром добавить 
# Добавить животных
# Узнать за каое время они пробегут дистанцию 1000м 
require 'pry'

class TimeDIstans
  def self.distance
    res = yield
    puts "Time #{animals.speed * hippodrome.distance}"
    res
  end
end

class Hippodrome
  attr_reader :distance, :animal

  def initialize(distance, animal = [])
    @distance = distance
    @animal = animal
  end

  def add_animal(animal)
    @animal << animal
    add_animal[animal] = { type: add_animal.type, speed: add_animal.speed }
  end

  def filter_by_type(type)
    animal_selector { |animal| animal.type == type }
  end

  def filter_by_speed(speed)
    animal_selector { |speed| animal.speed == speed }
  end

  def animal_distance
    TimeDIstans.distance { @animal.select { |animal| yield(animal) } }
  end
end

class Animal
  attr_reader :type, :speed

  def initialize(type, speed)
    @type = type
    @speed = speed
  end
end

dog = Animal.new('dog', '11')
horse = Animal.new('horse', '44')
rabbit = Animal.new('rabbit', '12')

a = Hippodrome.new('1000', [dog, horse, rabbit])
# a.add_animal(h)
# a.add_animal(Animal.new('rabbit', '12'))

binding.pry
