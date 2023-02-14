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
#     имеет колво рядов
#     кол-во мест
#     выбор фильма
#     выбор сеанса
# #   выводит данные билета
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

  def info_movies
    puts "Genre: #{genre}, Name: #{name}, Timing: #{timing}"
  end
end

class Session
  attr_accessor :type, :price

  def initialize(type, price)
    @type = type
    @price = price
  end

  def info_session
    puts "#{type}, price #{price}"
  end
end

class Tickets
  attr_accessor :row, :place, :session, :film

  def initialize(_session, _film)
    @row = %w[first second third]
    @place = %w[1 2 3]
    @session = {}
    @film = {}
  end

  def row_selection
    puts "Choose row #{row}"
    user_row = gets.strip
    until row.include?(user_row)
      puts 'You entered incorrectly'
      user_row = gets.strip
    end
  end

  def place_selection
    puts "Choose place #{place}"
    user_place = gets.strip
    until place.include?(user_place)
      puts 'You entered incorrectly'
      user_place = gets.strip
    end
  end

  def add_film(new_film)
    film[new_film] = { genre: new_film.genre, name: new_film.name, timing: new_film.timing }
  end

  def info_film
    film.values.join(', ')
  end

  def films_select
    film.each_value { |key| puts key[:name] }
  end

  def add_session(new_session)
    session[new_session] = { type: new_session.type, price: new_session.price }
  end

  def info_session
    session.values.join(', ')
  end

  def sessions_select
    session.each_value { |key| puts key[:type] }
  end

  def info_free_ticket
    puts " Row - #{row}, Place - #{place}, Films -  #{info_film}, Sessions - #{info_session}"
  end
end

class User
  attr_accessor :user_name, :password, :user_email

  def initialize
    @user_name = user_name
    @password = password
    @user_email = user_email
  end

  def user_verification
    puts 'Enter a name/login up to 10 letters'
    user_name = gets.strip
    puts 'Enter a password containing letters or numbers (5 characters)'
    password = gets.strip
    raise 'Incorrect data entry' unless user_name.match(/^[a-zA-Z]{1,10}$/) && password.match(/^[a-zA-Z0-9]{1,5}$/)

    puts "Welcome #{user_name}"
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
# terminator.info_movies
# shrek.info_movies

evening = Session.new('Evening session', '5')
afternoon = Session.new('Afternoon session', '3')
# evening.info_session
# afternoon.info_session

tik = Tickets.new([], [])
tik.add_session(evening)
tik.add_session(afternoon)
tik.add_film(terminator)
tik.add_film(shrek)
# tik.info_free_ticket
tik.sessions_select
tik.films_select

nikodim = User.new

# nikodim.user_verification
# tik.row_selection
# tik.place_selection

# nikodim.send_email
