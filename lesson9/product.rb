# 1) Создать класс Товар, имеющий переменные имя, цена, рейтинг. 
# 2) Создать класс Категория, имеющий переменные имя и массив товаров. Создать несколько объектов класса Категория. 
# 3) Создать класс Basket, содержащий массив купленных товаров. 
# 4) Создать класс User, содержащий логин, пароль и объект класса Basket. Создать несколько объектов класса User.
# 5) Вывести на консоль каталог продуктов.
# 6) Вывести на консоль покупки посетителей магазина.

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
    @all_product = []
    @name = name
  end

  def catalog
    puts all_product
    puts name
  end
end

class Basket
  attr_accessor :buy_product

  def initialize(buy_product)
    @buy_product = []
  end

  def chek
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

  def buy_product
    buy_product.each { |all_product| buy_product << all_product }
    puts login, pasword
    puts buy_product
  end
end

cat1 = Category.new('vegetable', '')
veget = cat1.all_product.push('tomat', 'cucumber') 
puts cat1.catalog

cat2 = Category.new('frut', '')
frut = cat2.all_product.push('apple', 'chery')
puts cat2.catalog


user1 = User.new('', 'volk', '111')
puts user1.buy_product
user2 = User.new('', 'zajc', '222')