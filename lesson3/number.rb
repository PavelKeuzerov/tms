# +1. компьютер загадывает число
# 2. просим пользователя угадать число (рассказать пользователю про правила игры)
# 3. проверяем угадал ли и чуть что подсказываем
# 4. обновляем количество попыток

MIN = 0
MAX = 100000000000000000000000

INPUT_EQUEL = 'Вы выиграли!'
INPUT_LOWER = 'Ваше число меньше загаданного!'
INPUT_HIGER = 'Ваше число больше загаданного!'
def right_guess?(users_guess, secret_number)
  if users_guess == secret_number
    return INPUT_EQUEL
  elsif users_guess < secret_number
    return INPUT_LOWER
  elsif users_guess > secret_number
    return INPUT_HIGER
  end
end

secret_number = rand(MIN..MAX)
current_guess = (MAX - MIN) / 2
min_namber = MIN
max_namber = MAX

loop do
  guess_result = right_guess?(current_guess, secret_number)
  case guess_result
    when INPUT_EQUEL
      puts "Победа! #{secret_number}"
  break
    when INPUT_LOWER
      min_namber = current_guess
      current_guess += ((max_namber - current_guess) / 2)
    when INPUT_HIGER
      max_namber = current_guess
      current_guess -= ((current_guess - min_namber) / 2)
  end
end
