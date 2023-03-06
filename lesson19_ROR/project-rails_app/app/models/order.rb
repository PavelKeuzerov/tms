class Order < ApplicationRecord
  has_one :castomer
  has_and_belongs_to_many :books
end
