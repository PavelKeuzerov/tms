# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.bigint :rating
      t.bigint :state
      t.bigint :customer_id
      t.bigint :book_id

      t.timestamps
    end
  end
end
