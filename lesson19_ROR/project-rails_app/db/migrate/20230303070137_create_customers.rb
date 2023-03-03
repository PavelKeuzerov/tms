class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :email
      t.bigint :visits
      t.bigint :orders_count
      t.bigint :lock_version

      t.timestamps
    end
  end
end
