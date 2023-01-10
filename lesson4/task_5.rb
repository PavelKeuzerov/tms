#Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).

alphabet = "абвгдеёжзийклмнопрстуфхцчшщъыьэюя"
letters = "аеёиоуыэюя"
hash = {}

letters.each_char { |letters| hash[letters] = alphabet.index(letters) + 1 }

puts hash