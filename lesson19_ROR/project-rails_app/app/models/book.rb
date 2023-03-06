class Book < ApplicationRecord
  has_one :author
  has_one :suplliers
  has_many :reviews
  has_and_belongs_to_many :orders
end
