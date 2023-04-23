# frozen_string_literal: true

class BookController < ApplicationController
  def show
    render json: Books::Show.call(book_params)
  end

  private

  def book_params
    params.permit(:title, :year_published, :price, :avatar)
  end
end
