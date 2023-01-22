# 1) Создать класс Товар, имеющий переменные имя, цена, рейтинг. 
# 2) Создать класс Категория, имеющий переменные имя и массив товаров. Создать несколько объектов класса Категория. 
# 3) Создать класс Basket, содержащий массив купленных товаров. 
# 4) Создать класс User, содержащий логин, пароль и объект класса Basket. Создать несколько объектов класса User.
# 5) Вывести на консоль каталог продуктов.
# 6) Вывести на консоль покупки посетителей магазина.
require 'pry'
class Product
  attr_accessor :name, :price, :rating

  def initialize(name, price, rating)
    @name = name
    @price = price
    @rating = rating
  end
end

class Category
  attr_accessor :name, :all_product

  def initialize(name, all_product)
    @name = name
    @all_product = all_product
  end

  def catalog(all_product)
    all_product << all_product
    puts all_product
  end
end

class Basket 
  attr_accessor :buy_product

  def initialize(buy_product)
    @buy_product = buy_product
  end

  def chek(buy_product)
    buy_product = []
    puts buy_product
  end
end

class User < Basket
  attr_accessor :login, :pasword

  def initialize(buy_product, login, pasword)
    @login = login
    @pasword = pasword
    super(buy_product)
  end
end

cat1 = Category.new('vegetable', 'tomat')
cat2 = Category.new('frut', 'aplle')

user1 = User.new('tomat', 'volk', '111')
user2 = User.new('aplle', 'zajc', '222')

# p Category.catalog

 a = Basket.new('tomat')



binding.pry