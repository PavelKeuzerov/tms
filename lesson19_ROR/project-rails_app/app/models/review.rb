# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :customer, optional: true
  belongs_to :book, optional: true
end
