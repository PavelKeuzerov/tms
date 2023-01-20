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
    price = price
    @rating = rating
  end
end

class Categoy
  attr_accessor :name, :all_product

  def initialize(name, all_product)
    @name = name
    @all_product = []
  end

  def catalog
    puts all_product
  end
end

class Basket < Categoy
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
    private
    @login = login
    @pasword = pasword
    super
  end
end

cat1 = Categoy.new('vegetable', 'tomat, cucumber')
cat2 = Categoy.new('frut', 'aplle, chery')

user1 = User.new('', 'volk' '111')
user2 = User.new('', 'zajc' '222')

p Categoy.catalog

p Basket.chek



