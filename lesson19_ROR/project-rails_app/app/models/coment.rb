# frozen_string_literal: true

class Coment < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  validates :message, presence: true, length: { maximum: 255 }
  validates :user_id, uniqueness: { scope: :book_id }
end
