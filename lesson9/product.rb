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
end

class Category
  attr_accessor :name, :all_product

  def initialize(name, all_product = [])
    @name = name
    @all_product = all_product
  end

  def puts_product(add_product)
    all_product << add_product
    all_product[add_product] = { product_name: add_product.product_name, price: add_product.price, rating: add_product.rating }
  end

  def catalog
    puts all_product
    puts name
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

  def initialize(login, pasword, basket)
    @login = login
    @pasword = pasword
    @basket = Basket.new
  end

  def buy_product(shop)
    buy_product << shop
    basket.buy_product[shop] = { product_name: shop.product_name, price: shop.price, rating: shop.rating }
    puts login, pasword
    puts buy_product
  end
end

chappi = Product.new('Chappi', 3.5, 1)
viskas = Product.new('Viskas', 2.5, 2)

dog_products = Category.new('Dog food', [chappi])
cat_products = Category.new('Cat food', [viskas])

pes = User.new('Pes', 'Pes123', [chappi])
cit = User.new('Cit', 'Cit232', [viskas])

# cit.buy_product.([viskas])
# pes.buy_product([chappi])
