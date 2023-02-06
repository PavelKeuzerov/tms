# frozen_string_literal: true

# Воспользуйтесь возможностями метапрограммирования и добавьте его в свои предыдущие работы.
# (Синглтон-методы, синглтон-классы, define_method, send, instance_eval, class_eval)

class Dog
  attr_reader :age, :name

  def initialize(age, name)
    @age = age
    @name = name
  end

  def speak_name
    puts "My name #{name}"
  end

  def method_missing(method_name, *_args)
    if method_name == :speak_age
      puts "My age #{age}"
    else
      super
      puts "NO method #{method_name}"
    end
  end

  def respond_to_missing?(method, *_args)
    method == method_name || super
  end
end

dog = Dog.new('1', 'Nikodim')
dog.speak_age
