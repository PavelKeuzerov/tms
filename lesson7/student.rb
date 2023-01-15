# Реализуйте класс Student (Студент), который будет наследовать от класса User, подобно тому, как это сделано в теоретической части урока.
# Этот класс должен иметь следующие свойства: name (имя, наследуется от User), surname (фамилия, наследуется от User), year (год поступления в вуз).
# Класс должен иметь метод full name() (наследуется от User), с помощью которого можно вывести одновременно имя и фамилию студента.
# Также класс должен иметь метод course(), который будет выводить текущий курс студента (от 1 до 5).
# Курс вычисляется так: нужно от текущего года отнять год поступления в вуз. Текущий год получите самостоятельно.

class User
  attr_accessor :name, :surname

  def initialize(name, surname)
    @name    = name
    @surname = surname
  end
end

class Student < User
  attr_accessor :year

  def initialize(name, surname, year)
    @year = year
    super(name, surname)
  end

  def full_name
    puts "My name #{name} #{surname}"
  end

  def course
    time = Time.new
    puts "Course of study #{time.year - year}"
  end
end

student_TMS = Student.new('Pavel', 'Keuzerov', 2022)

puts student_TMS.full_name
puts student_TMS.course
