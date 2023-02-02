# Взять задание с темы ООП и переписать методы с использованием блоков, Proc и lambda 
# Создать иподром добавить
# Добавить животных в методы

class Hippodrome
  attr_reader :distance, :animals

  def initialize(distance, animals = [])
    @distance = distance
    @animals = animals
  end

  def add_animals(add_animal)
    animals << add_animal
  end

  def type(type)
    selector { |animal| animal.type == type }
  end

  def speed(speed)
    selector { |animal| animal.speed == speed }
  end

  def name(name)
    selector { |animal| animal.name == name }
  end

  def selector(&block)
    animals.select(&block)
  end
end

class Animal
  attr_reader :type, :speed, :name

  def initialize(type, speed, name)
    @type = type
    @speed = speed
    @name = name
  end
end

dog = Animal.new('dog', '11', 'sharik')
horse1 = Animal.new('horse', '44', 'mustang')
horse2 = Animal.new('horse', '43', 'savraska')
rabbit = Animal.new('rabbit', '12', 'rodger')

running_animals = Hippodrome.new(1000, [dog, horse1, horse2, rabbit])
