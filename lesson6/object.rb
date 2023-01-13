# 1-создать class предметов которые окружают
# 2-сравнить обьекты 
require 'pry'

class Furniture
  include Comparable

  attr_accessor :chair, :table, :sofa

  def initialize(chair, table, sofa)
    @chair    = chair
    @table    = table
    @sofa     = sofa
  end

end

# home_furniture = Furniture.new('office', 'wooden', 'soft')

class Home_Appliances
  include Comparable
  attr_accessor :smartphone, :laptop, :tv_set

  def initialize(smartphone, laptop, tv_set)
    @smartphone = smartphone
    @laptop     = laptop
    @tv_set     = tv_set
  end
  def == (other_ither)
    value == other_ither.value
  end
end

# tehnic = Home_Appliances.new('huawei', 'hp', 'lg')


binding.pry



