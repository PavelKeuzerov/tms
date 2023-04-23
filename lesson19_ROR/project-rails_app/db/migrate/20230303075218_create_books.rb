# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title, index: true
      t.bigint :year_published
      t.string :isbn
      t.decimal :price
      t.boolean :out_of_print
      t.bigint :views
      t.bigint :supplier_id
      t.bigint :author_id

      t.timestamps
    end
  end
end
