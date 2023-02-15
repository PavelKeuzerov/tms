# frozen_string_literal: true

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
end

class Session
  attr_accessor :type, :price, :films

  def initialize(type, price)
    @type = type
    @price = price
    @films = {}
  end

  def add_film(new_film)
    films[new_film] = { genre: new_film.genre, name: new_film.name, timing: new_film.timing }
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
    puts " row - #{row}, place - #{place}, #{info}"
  end
end

class User
  attr_accessor :user_name, :password, :purchased_ticket

  def initialize(user_name, password)
    @user_name = user_name
    @password = password
    @purchased_ticket = {}
  end

  def user_verification
    puts 'Enter a name up to 10 letters'
    user_name = gets.strip
    puts 'Enter a password containing letters or numbers (5 characters)'
    password = gets.strip
    raise 'Некоректный ввод' unless user_name.match(/^[a-zA-Z]{1,10}$/) && password.match(/^[a-zA-Z0-9]{1,5}$/)

    puts "Welcome #{user_name}"
  end

  def buy_ticket(buy_ticket)
    purchased_ticket[buy_ticket] = buy_ticket
    # purchased_ticket[buy_ticket] =
    #   { type: buy_ticket.type, price: buy_ticket.price, genre: buy_ticket.genre, name: buy_ticket.name,
    #     timing: buy_ticket.timing }
  end

  def info
    purchased_ticket.values.join(', ')
  end

  def buy_info
    puts "Вы купили #{purchased_ticket}"
  end
end

terminator = Movie.new('action', 'Terminator', '2:05')
shrek = Movie.new('cartoon', 'Shrek', '1:40')

evening = Session.new('Evening session', '5')
afternoon = Session.new('Afternoon session', '3')
# afternoon.add_film(shrek)
# evening.add_film(terminator)
# evening.info_session
# afternoon.info_session

one = Tickets.new('2', '3')
two = Tickets.new('4', '5')
# one.add_ticket(evening)
two.add_ticket(afternoon)
# one.info_ticket
two.info_ticket

ar = User.new('', '')
ar.buy_ticket(two)
ar.buy_info
# ar.user_verification