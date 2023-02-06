# Написать программу, которая проверяет что подаётся на ввод.Если подаётся что-то вместо числа - вызывать исключение и в обработке вывести, что было подано.

class Valid
  attr_accessor :input_data

  def initialize(input_data)
    @input_data = input_data
  end

  def input
    raise "You entered #{input_data}" unless input_data.instance_of?(Integer) || input_data.instance_of?(Float)

    puts 'OK'
  end
end

number = Valid.new('1sd')
puts number.input
