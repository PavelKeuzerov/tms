# frozen_string_literal: true

class Forex < ApplicationRecord
  validates :from, presence: true, length: { is: 3 }
  validates :to, presence: true, length: { is: 3 }
  validates :rate, presence: true, numericality: true
end
