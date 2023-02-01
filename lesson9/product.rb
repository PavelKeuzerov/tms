# 1) Создать класс Товар, имеющий переменные имя, цена, рейтинг. 
# 2) Создать класс Категория, имеющий переменные имя и массив товаров. Создать несколько объектов класса Категория. 
# 3) Создать класс Basket, содержащий массив купленных товаров. 
# 4) Создать класс User, содержащий логин, пароль и объект класса Basket. Создать несколько объектов класса User.
# 5) Вывести на консоль каталог продуктов.
# 6) Вывести на консоль покупки посетителей магазина.

class Product
  attr_accessor :product_name, :price, :rating

  def initialize(product_name, price, rating)
    @product_name = product_name
    @price = price
    @rating = rating
  end

  def name_producs
    puts "product_name: #{product_name}, price: #{price}, rating: #{rating}"
  end
end

class Category
  attr_accessor :name, :all_product

  def initialize(name, all_product = [])
    @name = name
    @all_product = all_product
  end

  def puts_product(add_product)
    all_product << add_product
  end

  def catalog
    puts name
    all_product.map(&:name_producs)
  end
end

class Basket
  attr_accessor :buy_product

  def initialize(buy_product = [])
    @buy_product = buy_product
  end
end

class User
  attr_accessor :login, :pasword, :basket

  def initialize(login, pasword, product)
    @login = login
    @pasword = pasword
    @basket = Basket.new(product)
  end

  def product(shop)
    basket.buy_product << shop
  end

  def shoping_products
    puts login
    puts pasword
    basket.buy_product.map(&:name_producs)
  end
end

chappi = Product.new('Chappi', 3.5, 1)
viskas = Product.new('Viskas', 2.5, 2)
ketiket =  Product.new('Ketiket', 1.5, 2)
proplan =  Product.new('Proplan', 4.5, 3)

dog = Category.new('Dog food', [chappi, proplan])
cat = Category.new('Cat food', [viskas, ketiket])

pes = User.new('Pes', 'Pes123', [chappi])
cit = User.new('Cit', 'Cit232', [ketiket])

cit.shoping_products
pes.shoping_products

dog.catalog
cat.catalog
