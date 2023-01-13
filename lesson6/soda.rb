# Создать класс Soda (для определения типа газировки), принимающий 1 аргумент при инициализации (отвечающий за добавку к выбираемому лимонаду).
# В этом классе реализуйте метод show my drink(), выводящий на печать «Газировка и {ДОБАВКА}» в случае наличия добавки,
# а иначе отобразится следующая фраза: «Обычная газировка».

# 1-Создать class принимающий аргумент
# 2-Воспользоваться методом show my drink с выводом на экран фраз
class Soda
  attr_reader :addition

  def initialize(addition)
    @addition = addition
  end

  def show_my_drink
    if addition
      puts "Ваша выбор газировка с #{addition}"
    else
      puts 'Обычная газировка'
    end
  end
end

carbonated = Soda.new('cherry_syrup')
carbonated.show_my_drink
