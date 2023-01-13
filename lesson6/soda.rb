# 1-Создать class принимающий аргумент
# 2-Воспользоваться методом show my drink с выводом на экран фраз
# require 'pry'

class Soda
  attr_reader :addition

  def initialize(addition)
    @addition = addition
  end

  def show_my_drink
    # puts "Выберите с сиропом #{addition}или без"

    # user_syrup = gets.strip

    # until addition.include?(user_syrup)
    #   puts "Вы выбрали не правильно, у вас есть выбор либо с #{addition}, либо на пропустите на 'enter'"
    #   user_syrup = gets.strip
    # end

    if addition == ''
      puts 'Обычная газировка'
    else
      puts "Ваша выбор газировка с #{addition}"
    end
  end
end

carbonated = Soda.new('cherry_syrup')
carbonated.show_my_drink

# binding.pry