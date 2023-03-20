class Review < ApplicationRecord
  belongs_to :customer
  belongs_to :book
end
