# Создать класс Soda (для определения типа газировки), принимающий 1 аргумент при инициализации (отвечающий за добавку к выбираемому лимонаду).
# В этом классе реализуйте метод show my drink(), выводящий на печать «Газировка и {ДОБАВКА}» в случае наличия добавки,
# а иначе отобразится следующая фраза: «Обычная газировка».

# 1-Создать class принимающий аргумент
# 2-Воспользоваться методом show my drink с выводом на экран фраз
# require 'pry'
class Soda
  attr_reader :addition

  def initialize(addition = nil)
    @addition = addition
  end

  def show_my_drink
    if addition.nil?
      puts 'Обычная газировка'
    else
      puts "Ваша выбор газировка с #{addition}"
    end
  end
end

carbonated = Soda.new
carbonated.show_my_drink

# binding.pry