class CreateForexes < ActiveRecord::Migration[7.0]
  def change
    create_table :forexes do |t|
      t.string :pairs
      t.bigint :rate

      t.timestamps
    end
  end
end
