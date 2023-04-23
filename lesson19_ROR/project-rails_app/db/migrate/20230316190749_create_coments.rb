# frozen_string_literal: true

class CreateComents < ActiveRecord::Migration[7.0]
  def change
    create_table :coments do |t|
      t.string :title
      t.string :message
      t.bigint :user_id
      t.bigint :book_id
      t.index %i[user_id book_id], unique: true

      t.timestamps
    end
  end
end
