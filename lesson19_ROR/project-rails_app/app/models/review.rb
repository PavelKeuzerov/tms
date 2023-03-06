class Review < ApplicationRecord
  has_one :castomers
  has_one :book
end
