# frozen_string_literal: true

# Воспользуйтесь возможностями метапрограммирования и добавьте его в свои предыдущие работы.
# (Синглтон-методы, синглтон-классы, define_method, send, instance_eval, class_eval)

module MyAccer
  def my_attr(*variable)
    variable.each do |variable|
      define_method(variable) do
        instance_variable_get("@#{variable}")
      end
    end
  end
end

class MyAttrAccer
  extend MyAccer

  my_attr :arg_1, :arg_2

  def initialize(arg_1, arg_2)
    @arg_1 = arg_1
    @arg_2 = arg_2
  end
end
