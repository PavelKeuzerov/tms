class CreateUserLes20s < ActiveRecord::Migration[7.0]
  def change
    create_table :user_les20s do |t|
      t.string :email
      t.string :passwors
      t.string :first_name
      t.string :last_name
      t.boolean :confirmed

      t.timestamps
    end
  end
end
