# frozen_string_literal: true

class Forex < ApplicationRecord
  validates :pair, presence: true, length: { is: 6 }
  validates :rate, presence: true, numericality: true
end
