# frozen_string_literal: true

require 'rails_helper'

describe Books::Show do
  describe '.call' do
    subject(:show_books) { described_class.call(book_params) }

    let(:book1) { Book.create!(title: 'The Nineteen Eighty-Four', price: 199, year_published: 1949) }
    let(:book2) { Book.create!(title: 'The Hobbit or There and Back Again', price: 399, year_published: 1937) }
    let(:book3) { Book.create!(title: 'The Lord of the Rings', price: 411, year_published: 1955) }

    context 'when the title parameter' do
      let(:book_params) { { title: 'The' } }

      it 'returns three book' do
        expect(show_books).to eq([book1, book2, book3])
      end
    end

    context 'when the price parameter' do
      let(:book_params) { { title: 'The', price: '222' } }

      it 'returns two book' do
        expect(show_books).to eq([book1, book2])
      end
    end

    context 'when the year_published parameter' do
      let(:book_params) { { title: 'The', price: '222', year_published: '1944' } }

      it 'returns one book' do
        expect(show_books).to eq([book1])
      end
    end
  end
end
