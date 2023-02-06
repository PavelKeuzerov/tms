# Написать программу, которая проверяет что подаётся на ввод. Если подаётся что-то вместо числа - вызывать исключение и в обработке вывести, что было подано.

class Valid
  attr_accessor :input_data

  def initialize(input_data)
    @input_data = input_data
  end

  def input
    raise "You entered #{input_data}" unless input_data.instance_of?(Integer)

    puts 'OK'
  end

  # def input
  #   Integer(input_data)
  #   puts 'Ok right'
  # rescue ArgumentError => e
  #   puts "An error has occurred #{e.class.name}"
  #   puts e.message
  # end
end

number = Valid.new(1)
puts number.input
