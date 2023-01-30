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

class Login < StandardError
  LOGIN = /^[a-zA-Z][a-zA-Z0-9]_\.{1,20}$/
  attr_accessor :login

  def initialize(login)
    @login = login
  end

  def login_input
    login == LOGIN
    rescue WrongLoginException => err
      puts "An error has occurred #{err.class.name}"
      puts err.message
  end
end

class Passwords < StandardError
  PASSWORD = /^[a-zA-Z][a-zA-Z0-9]_\.{1,20}$/
  attr_accessor :password, :confirm_password

  def initialize(password, confirm_password)
    @password = password
    @confirm_password = confirm_password
  end

  def pasword_input
    password == PASSWORD
    rescue WrongPasswordException => err
      puts "An error has occurred #{err.class.name}"
      puts err.message
  end

  def confirm_password
    begin
    confirm_password == password
    rescue WrongPasswordException => err
      puts "An error has occurred #{err.class.name}"
      puts err.message
    rescue StandardError
      puts 'confirm_password does not match passworrd'
    end
  end
end

a = Login.new('sd_334rgty678ujnbfder')
b = Passwords.new('afaf_2121', 'asassa12_21')
p a.login_input
p b.pasword_input
p b.confirm_password

