class Coment < ApplicationRecord
  validates :message, presence: true, length: { maximum: 255 }
  validates :customer_id, uniqueness: { scope: :book_id }
end
