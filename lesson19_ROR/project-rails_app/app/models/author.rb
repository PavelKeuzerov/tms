# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :books
  has_one_attached :avatar

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :title, presence: true
end
