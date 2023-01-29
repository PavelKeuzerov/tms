# Проверка логина и пароля
# Создать метод который принимает на вход три параметра: login, password и confirm_password.
# Login должен содержать только латинские буквы, цифры и знак подчеркивания.
# Длина login должна быть меньше 20 символов. Если login не соответствует этим требованиям, необходимо выбросить WrongLoginException.
# Password должен содержать только латинские буквы, цифры и знак подчеркивания. Длина password должна быть меньше 20 символов. 
# Также password и confirm _password должны быть равны. Если password не соответствует этим требованиям, необходимо выбросить WrongPasswordException.  
# WrongPasswordException и WrongLoginException - пользовательские классы исключения с двумя конструкторами – один по умолчанию, 
# второй принимает сообщение исключения и передает его в конструктор класса Exception.
# Обработка исключений проводится внутри метода.
# Метод возвращает true, если значения верны или false в другом случае. 

class Verification
  attr_accessor :login, :password, :confirm_password

  def initialize(login, password, confirm_password)
    @login = login
    @password = password
    @confirm_password = confirm_password
  end

  def login_input
    login = /^[a-zA-Z][a-zA-Z0-9-_]{20}$/
    rescue WrongLoginException => err
      puts "An error has occurred #{err.class.name}"
      puts err.message
  end

  def password_input
    password = /(?=^.{20,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/
    # password = ('a'..'z' && (1..10) && '_').match < CHARACTES
    rescue WrongPasswordException => err
      puts "An error has occurred #{err.class.name}"
      puts err.message
  end

  def confirm_password
    confirm_password == password
    rescue WrongPasswordException => err
      puts "An error has occurred #{err.class.name}"
      puts err.message
    rescue StandardError
      puts 'confirm_password does not match passworrd'
  end
end

a = Verification.new('sd_334rgty678ujnbfder', 'a_s', 's_d')
p a.login_input

