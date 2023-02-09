# Разработка автоматизированной системы работы кинотеатра
#  
#   Movie 
#     принимает параметры (жанр, название фильма, продолжительность)

#   Session принимает 
#     тип сеанса  
#     цену  
#     фильм который идет на этом сеансе

# - Tickets 
#     имеет ряд место
#     выводит данные билета 
#
# - User
#    авторизация пользователя должен иметь  login, pasword(должен содержать 10 символовол с заглавными буквами и цифрами - опционально)
#    обработать ошибку по вводу login, pasword (применить обработку исключения пока не пройдет правильную верификацию)
#    выбор либо остаться в личном кобинете либо приступить к покупке билета либо показать купленные билеты (применить цикл loop do)
#    вывести хэш с сеансами и предлогаемыми фильмами
#    отсортировать/отфильтровать сеансы и фильмы по параметрам
#    покупка билетов
#    вывести информацию о выбраном сеансе с параметром фильма
#    получить чек о купленном сеансе с информацией на email

#   Консоль
# 1 - Авторизация (вход в личный кабинет)
# 2 - Получить данные о сеансах с фильмах (вывод на экран всех фильмов)
#   - сортировка по пораметрам
# 3 - Покупка билета на сеанс 
  
class Movie
  attr_accessor :genre, :name, :timing

  def initialize(genre, name, timing)
    @genre = genre
    @name = name
    @timing = timing
  end
end

class Session
  attr_accessor :type, :price, :films

  def initialize(type, price)
    @type = type
    @price = price
    @films = {}
  end

  def add_film(new_film)
    films[new_film] = {  genre: new_film.genre, name: new_film.name, timing: new_film.timing }
  end

  def info
    films.values.join(', ')
  end

  def info_session
    puts "#{type}, price #{price}, movie #{info}"
  end
end

class Tickets
  attr_accessor :row, :place, :tickets

  def initialize(row, place)
    @row = row
    @place = place
    @tickets = {}
  end

  def add_ticket(new_ticket)
    tickets[new_ticket] = { type: new_ticket.type, price: new_ticket.price }
  end

  def info
    tickets.values.join(', ')
  end

  def info_ticket
    puts " row - #{row}, place - #{place}, #{tickets}"
  end
end

class User
  attr_accessor :login, :password

  def initialize(login, password)
    @login = login
    @password = password
    # @ticket = Tickets.new
  end

  def user_verification
    puts 'Enter login and password'
    login = gets.strip
    password = gets.strip
    raise 'Некоректный ввод' unless login.size < 10 && login.match(/^[a-zA-Z0-9]+$/)

    puts 'Вы зарегестрированы'
  end
end




terminator = Movie.new('action', 'Terminator', '2:05')
shrek = Movie.new('cartoon', 'Shrek', '1:40')

evening = Session.new('Evening session', '5')
afternoon = Session.new('Afternoon session', '3')
afternoon.add_film(shrek)
evening.add_film(terminator)
evening.info_session
afternoon.info_session

one = Tickets.new('2', '3')
two = Tickets.new('4', '5')
one.add_ticket(evening)
two.add_ticket(afternoon)
one.info_ticket
two.info_ticket

ar = User.new('qwe', 12)

ar.user_verification
# user.purchased_tickets
# ar.buy(terminator)




#   def buy(buy_ticket)
#     ticket.add{buy_ticket}
#   end

  # def purchased_tickets
  #   puts "#{tickets.session_time}: #{tickets.info_tickets}"
  # end
