# frozen_string_literal: true

class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @authors = Author.new
  end

  def create
    @authors = Author.new(authors_params)
    if @authors.save
      redirect_to authors_path
    else
      render :new
    end
  end

  private

  def authors_params
    params.require(:author).permit(:first_name, :last_name, :title, :avatar)
  end
end
