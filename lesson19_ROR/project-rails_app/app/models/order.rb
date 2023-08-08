# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :customer, optional: true
  has_and_belongs_to_many :books
end
