class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :contact
      t.integer :gender
      t.boolean :is_active

      t.timestamps
    end
  end
end
