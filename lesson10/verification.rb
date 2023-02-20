# frozen_string_literal: true

# Проверка логина и пароля
# Создать метод который принимает на вход три параметра: login, password и confirm_password.
# Login должен содержать только латинские буквы, цифры и знак подчеркивания.
# Длина login должна быть меньше 20 символов. Если login не соответствует этим требованиям, необходимо выбросить WrongLoginException.
# Password должен содержать только латинские буквы, цифры и знак подчеркивания. Длина password должна быть меньше 20 символов.
# Также password и confirm _password должны быть равны. Если password не соответствует этим требованиям, необходимо выбросить WrongPasswordException.
# WrongPasswordException и WrongLoginException - пользовательские классы исключения с двумя конструкторами – один по умолчанию,
# второй принимает сообщение исключения и передает его в конструктор класса Exception.
# Обработка исключений проводится внутри метода.
# # Метод возвращает true, если значения верны или false в другом случае.

class WrongPasswordException < StandardError
end

class WrongLoginException < StandardError
end

class Verification
  attr_accessor :login, :password, :confirm_password

  def initialize(login, password, confirm_password)
    @login = login
    @password = password
    @confirm_password = confirm_password
  end

  def verification
    raise WrongLoginException unless login.match(/^[a-zA-Z0-9_]{1,20}$/)
    raise WrongPasswordException unless password.match((/^[a-zA-Z0-9_]{1,20}$/)) && password == confirm_password

    true
  rescue WrongLoginException, WrongPasswordException => e
    puts e.message
    false
  end
end

user = Verification.new('12sder_wefrgtylgfef3', '12sder_wefrgtylgfef3', '12sder_wefrgtylgfef3')
user.verification

