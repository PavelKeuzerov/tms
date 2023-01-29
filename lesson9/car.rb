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
    attr_accessor :model_car, :class_car, :car_weight, :driver, :engine

    def initialize(options)
      @model_car = options[:model_car]
      @class_car = options[:class_car]
      @car_weight = options[:car_weight]
      @driver = options[:driver]
      @engine = options[:engine]
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
      puts "Это автомобиль #{model_car}, #{class_car}, #{car_weight},с мотором #{engine.power}, #{engine.manufacturer}, с водителем #{driver.full_name}, #{driver.driver_experience}"
    end
  end

  class Lorry < Car
    attr_accessor :car_capacity

    def initialize(options)
      super
      @car_capacity = options[:car_capacity]
    end
  end

  class SportCar < Car
    attr_accessor :max_speed

    def initialize(options)
      @max_speed = options[:max_speed]
      super
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

class Driver
  attr_accessor :full_name, :driver_experience

  def initialize(full_name, driver_experience)
    @full_name = full_name
    @driver_experience = driver_experience
  end
end

class Person < Driver
end

lorry_motor = Professions::Engine.new('240', 'MMZ')
sport_motor = Professions::Engine.new('452', 'GaZ')

drive = Driver.new('Jason Statham', '22')

gaz = Vehicles::Lorry.new({ model_car: 'Gaz', class_car: 'gaz 53', car_weight: '3000', driver: drive, engine: lorry_motor, car_capacity: '10000'})
volga = Vehicles::SportCar.new({ model_car: 'Volga', class_car: 'gaz 21', car_weight: '2300', driver: drive, engine: sport_motor, max_speed: '240'})

gaz.to_s
volga.to_s
