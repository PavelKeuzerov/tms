class CreateForexes < ActiveRecord::Migration[7.0]
  def change
    create_table :forexes do |t|
      t.string  :from
      t.string  :to
      t.decimal :amount
      t.timestamps
    end
  end
end
