# Воспользуйтесь возможностями метапрограммирования и добавьте его в свои предыдущие работы.
# (Синглтон-методы, синглтон-классы, define_method, send, instance_eval, class_eval)

class Dog
  class << self
    def inherited(subclass)
      subclass.class_eval do
        attr_reader(*attr)
      end
      super
    end
  end
  attr_reader :age, :name

  def initialize(age, name)
    @age = age
    @name = name
  end

  def speak_age
    puts "My age #{age}"
  end

  def speak_name
    puts "My name #{name}"
  end
end

class HunterDog < Dog
end

dogs = HunterDog.new('2', 'Nikodim')
dogs.speak_age
dogs.speak_name
