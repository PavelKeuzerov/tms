# Написать программу, которая проверяет что подаётся на ввод. Если подаётся что-то вместо числа - вызывать исключение и в обработке вывести, что было подано.

class Valid
  attr_accessor :input_data

  def initialize(input_data)
    @input_data = input_data
  end

  def input
    Integer(input_data)
      puts 'Ok'
    rescue ArgumentError => err
      puts "An error has occurred #{err.class.name}"
      puts err.message
  end
end

  number = Valid.new('ddswd')

  puts number.input