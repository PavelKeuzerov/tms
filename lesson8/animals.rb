# 1. Создать класс Animal и расширяющие его классы Dog, Cat, Horse. Класс Animal должен содержать переменную класса, отвечающую за количество созданных объектов.
#    Также у него должен быть метод класса, выводящий это количество
# 2. Класс Animal содержит переменные food, location и методы makeNoise, eat, sleep. Метод makeNoise,
#    например, может выводить на консоль "Такое-то животное спит". 
# 3. Dog, Cat, Horse переопределяют методы makeNoise, eat. 
# 4. Добавьте переменные в классы Dog, Cat, Horse, характеризующие только этих животных.
# 5. Создайте класс Ветеринар, в котором определите метод treatAnimal(animal). Пусть этот метод распечатывает food и location пришедшего на прием животного.
# 6. Создайте массив различных животных, в который запишите животных всех имеющихся у вас типов. В цикле отправляйте их на прием к ветеринару.
#    Выведите их количество

class Animal
  @@number_animals = 0
  @@all_animals = []

  attr_accessor :food, :location

  def initialize(food, location)
    @food = food
    @location = location
    @@number_animals += 1
    @@all_animals << self
  end

  def self.all_animal
    puts @@all_animals
  end

  def self.number_animals
    puts @@number_animals
  end

  def make_noise
    puts 'Such an animal sleeps'
  end

  def eat
    puts 'I eat everything'
  end

  def sleep
    puts 'I woke up'
  end
end

class Dog < Animal
  attr_accessor :speciality, :food, :location

  def initialize(food, location, speciality)
    @speciality = speciality
    super(food, location)
  end

  def make_noise
    puts 'Someone came'
  end

  def eat
    puts 'My favorite food is meat'
  end

  def sleep
    puts 'It is too early'
  end
end

class Cat < Animal
  attr_accessor :collor, :food, :location

  def initialize(food, location, collor)
    @collor = collor
    super(food, location)
  end

  def make_noise
    puts 'It seems a mouse'
  end

  def eat
    puts 'My favorite food is milk'
  end

  def sleep
    puts 'I always sleep'
  end
end

class Horse < Animal
  attr_accessor :participates_in_the_races, :food, :location

  def initialize(food, location, participates_in_the_races)
    @participates_in_the_races = participates_in_the_races
    super(food, location)
  end

  def make_noise
    puts 'I love running'
  end

  def eat
    puts 'My favorite food is oats'
  end

  def sleep
    puts 'No time to sleep'
  end
end

class Vet
  def treat_animal(animal)
    puts animal.food
    puts animal.location
  end
end

pes = Dog.new('meat', 'house', 'hunter')
kit = Cat.new('fish', 'house', 'black')
kon = Horse.new('corn', 'hippodrome', 'racehorse')
pets = [pes, kit, kon]

puts Animal.number_animals
puts Vet.new.treat_animal(kit)

pets.each { |animal| Vet.new.treat_animal(animal) }
