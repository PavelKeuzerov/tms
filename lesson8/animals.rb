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

  def makeNoise
    puts 'Такое живодное спит'
  end

  def eat
    puts "Я ем #{food}"
  end

  def sleep
    puts 'Я проснулся'
  end
end

class Dog < Animal
  attr_accessor :speciality, :food, :location

  def initialize(food, location, speciality)
    @speciality = speciality
    super(food, location)
  end

  def makeNoise
    puts 'Кто то пришел'
  end

  def eat
    puts 'Моя любимоя еда мясо'
  end

  def sleep
    puts 'Еще рано'
  end
end

class Cat < Animal
  attr_accessor :collor, :food, :location

  def initialize(food, location, collor)
    @collor = collor
    super(food, location)
  end

  def makeNoise
    puts 'Кажется мышь'
  end

  def eat
    puts 'Моя любимоя еда молоко'
  end

  def sleep
    puts 'Я всегда сплю'
  end
end

class Horse < Animal
  attr_accessor :participates_in_the_races, :food, :location

  def initialize(food, location, participates_in_the_races)
    @participates_in_the_races = participates_in_the_races
    super(food, location)
  end

  def makeNoise
    puts 'Я люблю бег'
  end

  def eat
    puts 'Моя любимоя еда овес'
  end

  def sleep
    puts 'Не время спать'
  end
end

  class Vet 
    def treatAnimal(animal)
      puts animal.food
      puts animal.location
    end
  end

pes = Dog.new('meat', 'house', 'hunter')
kit = Cat.new('fish', 'house', 'black')
kon = Horse.new('oves', 'budka', 'fdfd')

puts Animal.number_animals
puts Vet.new.treatAnimal(kit)


Animal.eat
