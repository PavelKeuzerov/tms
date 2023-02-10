
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
#    выбор либо остаться в личном кобинете либо приступить к покупке билета либо показать купленные билеты
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

  def movies
    puts "genre: #{genre}, name: #{name}, timing: #{timing}"
  end
end

class Session
  attr_accessor :type, :price, :films

  def initialize(type, price, films = [])
    @type = type
    @price = price
    @films = films
  end

  def add_film(new_film)
    films << new_film
  end

  def info_session
    puts "#{type}, price #{price}"
    films.map(&:movies)
  end

  # def genre(genre)
  #   films.select { |films| films.genre == genre }
  # end

  # def selector(&block)
  #   films.select(&block)
  # end
end

class Tickets
  attr_accessor :row, :place, :tickets

  def initialize(row, place, tickets = [])
    @row = row
    @place = place
    @tickets = tickets
  end

  def add_ticket(new_ticket)
    tickets << new_ticket
  end

  def info_ticket
    puts " row - #{row}, place - #{place}"
    tickets.map(&:info_session)
  end
end

class User
  attr_accessor :user_name, :password, :purchased_ticket, :user_email

  def initialize(user_name, password, user_email, purchased_ticket = [])
    @user_name = user_name
    @password = password
    @user_email = user_email
    @purchased_ticket = purchased_ticket
  end

  def user_verification
    puts 'Enter a name up to 10 letters'
    user_name = gets.strip
    puts 'Enter a password containing letters or numbers (5 characters)'
    password = gets.strip
    raise 'Incorrect data entry' unless user_name.match(/^[a-zA-Z]{1,10}$/) && password.match(/^[a-zA-Z0-9]{1,5}$/)

    puts "Welcome #{user_name}"
  end

  def buy_ticket(buy_ticket)
    purchased_ticket << buy_ticket
  end

  def buy_info
    puts 'Your ticket'
    purchased_ticket.map(&:info_ticket)
  end

  def send_email
    puts 'Enter your email and we will send you a copy of your ticket'
    user_email = gets.strip
    raise 'Incorrect data entry' unless user_email.match(/^[a-z0-9]+@[a-z0-9]+\.[a-z]+/)

    puts 'Letter sent'
  end
end

terminator = Movie.new('action', 'Terminator', '2:05')
shrek = Movie.new('cartoon', 'Shrek', '1:40')

evening = Session.new('Evening session', '5', [terminator])
afternoon = Session.new('Afternoon session', '3', [shrek])
# afternoon.add_film(shrek)
# evening.add_film(terminator)
# evening.info_session
# afternoon.info_session
# evening.genre

one = Tickets.new('2', '3', [evening])
two = Tickets.new('4', '5', [afternoon])
# one.add_ticket(evening)
# two.add_ticket(afternoon)
# one.info_ticket
# two.info_ticket

ar = User.new('', '', '', [two])
# ar.buy_ticket(two)


ar.user_verification
# ar.buy_info
# ar.send_email


