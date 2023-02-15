class Movie
  attr_accessor :genre, :name, :timing

  def initialize(genre, name, timing)
    @genre = genre
    @name = name
    @timing = timing
  end

  def info_movies
    puts "Genre: #{genre}, Name: #{name}, Timing: #{timing}"
  end
end

class Session
  attr_accessor :type, :price, :films

  def initialize(type, price)
    @type = type
    @price = price
    @films = {}
  end

  def add_film(new_film)
    films[new_film] = { genre: new_film.genre, name: new_film.name, timing: new_film.timing }
  end

  def info
    films.values.join(', ')
  end

  def info_session
    puts "#{type}, price #{price}, movie #{info}"
  end
end

class Tickets
  attr_accessor :row, :place, :session

  def initialize
    @row = %w[first second third]
    @place = %w[1 2 3]
    @session = {}
  end

  def cinema_row_selection
    puts "Choose row #{row}"
    user_row = gets.strip
    until row.include?(user_row)
      puts 'You entered incorrectly'
      user_row = gets.strip
    end
  end

  def cinema_seat_selection
    puts "Choose place #{place}"
    user_place = gets.strip
    until place.include?(user_place)
      puts 'You entered incorrectly'
      user_place = gets.strip
    end
  end

  def cinema_film_session_selection
    puts 'Select a session to watch'
    puts '1 - Evening session, 2 - Afternoon session'
    puts 'puts (1,2)'
    user_input = gets.to_i
    case user_input
    when 1
      session_select_evening
    when 2
      session_select_afternoon
    else
      puts 'Wrong choice'
    end
  end

  def add_session(new_session)
    session[new_session] = { type: new_session.type, price: new_session.price }
  end

  def info_session
    session.values.join(', ')
  end

  def session_select_evening
    session.each_value { |key| puts key[:type], key[:price] if key[:type] == 'Evening session' }
  end

  def session_select_afternoon
    session.each_value { |key| puts key[:type], key[:price] if key[:type] == 'Afternoon session' }
  end

  def info_free_ticket
    puts " Row - #{row}, Place - #{place}, Sessions - #{info_session}"
  end
end

class User
  attr_accessor :user_name, :password, :user_email

  def initialize
    @user_name = user_name
    @password = password
    @user_email = user_email
  end

  def user_verification
    puts 'Enter a name/login up to 10 letters'
    user_name = gets.strip
    puts 'Enter a password containing letters or numbers (5 characters)'
    password = gets.strip
    raise 'Incorrect data entry' unless user_name.match(/^[a-zA-Z]{1,10}$/) && password.match(/^[a-zA-Z0-9]{1,5}$/)

    puts "Welcome #{user_name}"
  end

  def send_email
    puts 'Enter your email and we will send you a copy of your ticket'
    user_email = gets.strip
    raise 'Incorrect data entry' unless user_email.match(/^[a-z0-9]+@[a-z0-9]+\.[a-z]+/)

    puts 'An email will be sent when the service is up and running'
  end
end

terminator = Movie.new('action', 'Terminator', '2:05')
shrek = Movie.new('cartoon', 'Shrek', '1:40')

evening = Session.new('Evening session', '5 BYN')
afternoon = Session.new('Afternoon session', '3 BYN')
evening.add_film(terminator)
afternoon.add_film(shrek)

tik = Tickets.new
tik.add_session(evening)
tik.add_session(afternoon)

nikodim = User.new
nikodim.user_verification
tik.info_free_ticket
tik.cinema_row_selection
tik.cinema_seat_selection
tik.cinema_film_session_selection
nikodim.send_email
