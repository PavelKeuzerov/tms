# Взять несколько предметов, которые вас окружают, и описать их, как классы. Создать по объекту каждого класса, сравнить их поведение.


# 1-создать class предметов которые окружают
# 2-сравнить обьекты 

class Pencil
  attr_accessor :material, :view, :lead_hardness

  def initialize(material, view, lead_hardness)
    @cmaterial     = material
    @view          = view
    @lead_hardness = lead_hardness
  end
end

working_pencil = Pencil.new('metal', 'automatic', 'hb')

class Phone
  attr_accessor :phone_type, :brend, :model

  def initialize(phone_type, brend, model)
    @phone_type = phone_type
    @brend      = brend
    @model      = model
  end
end

my_phone = Phone.new('mobile_phone', 'apple', 'iphone_2G')
