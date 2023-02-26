class NameController < ActionController::Base
  def my_name
    name = 'Hello, my name Pavel Keuzerov'

    render json: name
  end
end
