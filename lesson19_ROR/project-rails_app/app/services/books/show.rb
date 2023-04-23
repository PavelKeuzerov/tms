# frozen_string_literal: true

module Books
  class Show
    class << self
      def call(book_params)
        book = Book.all
        book = book.where('price >= 100 AND price <400', book_params[:price]) if book_params[:price]
        if book_params[:year_published]
          book = book.where('year_published BETWEEN 1940 AND 1950',
                            book_params[:year_published])
        end
        book = book.where('title LIKE ?', "%#{book_params[:title]}%") if book_params[:title]
      end
    end
  end
end
