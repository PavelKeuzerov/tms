# По диаграмме (из слайда №6 ) классов создать иерархию. Реализовать все принципы ООП

class Mammal
  attr_accessor :animals, :breed_animals, :name

  def initialize(animals, breed_animals, name)
    @animals = animals
    @breed_animals = breed_animals
    @name = name
  end
end

class Dog < Mammal
  attr_accessor :dog_profession

  def initialize(animals, breed_animals, name, dog_profession)
    @dog_profession = dog_profession
    super(animals, breed_animals, name)
  end
end

class YorkshireTerrier < Dog
  attr_accessor :breed_type

  def initialize(animals, breed_animals, name, dog_profession, breed_type)
    @breed_type = breed_type
    super(animals, breed_animals, name, dog_profession)
  end
end

class Labrador < Dog
  attr_accessor :type_wool

  def initialize(animals, breed_animals, name, dog_profession, type_wool)
    @type_wool = type_wool
    super(animals, breed_animals, name, dog_profession)
  end
end

class Cat < Mammal
  attr_accessor :where_does_he_live

  def initialize(animals, breed_animals, name, where_does_he_live)
    @where_does_he_live = where_does_he_live
    super(animals, breed_animals, name)
  end
end

class British < Cat
  attr_accessor :speak

  def initialize(animals, breed_animals, name, where_does_he_live, speak)
    @speak = speak
    super(animals, breed_animals, name, where_does_he_live)
  end
end

york =  YorkshireTerrier.new('dog', 'YorkshireTerrier', 'Rocky', 'companion', 'standart')
labr =  Labrador.new('dog', 'Labrador', 'Wolf', 'hunter', 'retriever')
brit = British.new('cat', 'British', 'Ozzy', 'lives in the house', 'Meay SER')
