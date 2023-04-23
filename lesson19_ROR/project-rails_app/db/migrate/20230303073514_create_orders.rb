# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.time :date_submitted
      t.bigint :status
      t.decimal :subtotal
      t.decimal :shiping
      t.decimal :tax
      t.decimal :total
      t.bigint :customer_id

      t.timestamps
    end
  end
end
