# Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара (может быть нецелым числом). Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп" в качестве названия товара. На основе введенных данных требуетеся:
# Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
# Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".

# 1- задать ввод условий с клавиатуры где СТОП заканчивает цикл
# 2- вывести хэш, название => цена
# 3- вывести итогую сумму покупок

shopping = {}
check_amount = 0

loop do
  product = nil
  price = nil
  product_quantity = nil

  loop do
    puts 'Введите название товара или (\ стоп \) для получения чека '
    product = gets.strip
    break unless shopping.key?(product)

    puts 'Такой товар вы уже выбрали'
  end

  break if product == 'стоп'

  loop do
    puts  'Введите цену'
    price = gets.to_f
    break if price >= 0

    puts 'Не коректная цена'
  end

  loop do
    puts 'Введите кол-во товара'
    product_quantity = gets.to_f
    break if product_quantity >= 0

    puts 'Не правльное кол-во'
  end

  shopping[product] = { 'price' => price, 'product_quantity' => product_quantity }
end

puts shopping

shopping.each { |product, hash| check_amount += hash['price'] * hash['product_quantity'] }

shopping.each { |product, hash| puts "#{product} = #{hash['price'] * hash['product_quantity']}" }

puts "Итоговая сумма #{check_amount}"
