class Order < ApplicationRecord
  belongs_to :castomer
  has_and_belongs_to_many :books
end
