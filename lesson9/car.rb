# 1) Создать класс Car в модуле Vehicles, класс Engine в модуле Professions.
# 2) Класс Driver содержит поля - ФИО, стаж вождения.
# 3) Класс Engine содержит поля - мощность, производитель.
# 4) Класс Car содержит поля - марка автомобиля, класс автомобиля, вес, водитель типа Driver, мотор типа Engine. 
#    Методы start(), stop(), turnRight(), turnLeft(), которые выводят на печать: "Поехали", "Останавливаемся", "Поворот направо" или "Поворот налево".
#    А также метод to s(), который выводит полную информацию об автомобиле, ее водителе и моторе. 
# 5) Создать производный от Car класс  - Lorry (грузовик), характеризуемый также грузоподъемностью кузова.
# 6) Создать производный от Car класс - SportCar, характеризуемый также предельной скоростью.
# 7) Пусть класс Driver расширяет класс Person.

module Vehicles
  class Car
    attr_accessor :model_car, :class_car, :car_weight

    def initialize(sex, full_name, driver_experience, model_car, class_car, car_weight)
      @model_car = model_car
      @class_car = class_car
      @car_weight = car_weight
    end

    def start
      puts 'Поехали'
    end

    def stop
      puts 'Остановитесь'
    end

    def turn_right
      puts 'Поворот на лево'
    end

    def tern_left
      puts 'Поворот на право'
    end

    def to_s
      puts "Это автомобиль #{model_car}, #{class_car}, #{car_weight},с мотором #{power} производство #{manufacturer} и им управлят #{sex}, #{full_name}"
    end
  end
end

module Professions
  class Engine
    attr_accessor :power, :manufacturer

    def initialize(power, manufacturer)
      @power = power
      @manufacturer = manufacturer
    end
  end
end

class Lorry
  include Vehicles, Professions

  attr_accessor :car_capacity

  def initialize(sex, full_name, driver_experience, model_car, class_car, car_weight)
    @car_capacity = car_capacity
    super
  end
end

class SportCar
  include Vehicles
  include Professions

  attr_accessor :max_speed

  def initialize(sex, full_name, driver_experience, model_car, class_car, car_weight)
    @max_speed = max_speed
  end
end

class Driver
  attr_accessor :full_name, :driver_experience

  def initialize(sex, full_name, driver_experience)
    @full_name = full_name
    @driver_experience = driver_experience
    super
  end
end

class Person < Driver
  attr_accessor :sex

  def initialize
    @sex = sex
  end
end

a = Person.new('men')
a.ff