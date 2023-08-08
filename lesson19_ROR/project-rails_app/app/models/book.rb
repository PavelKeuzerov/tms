# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author, optional: true
  belongs_to :supllier, optional: true
  has_many :reviews
  has_and_belongs_to_many :orders
end
