class CreateLifts < ActiveRecord::Migration[5.1]
  def change
    create_table :lifts do |t|
      t.integer :id_lift
      t.date :date_of_booking
      t.date :date_of_commissioned
      t.string :transaction_type
      t.integer :amount
      t.string :currency
      t.integer :balance
      t.string :account
      t.string :name
      t.integer :lift_type_id
      t.integer :user_id
      t.text :description
      t.text :addtional_data

      t.timestamps
    end
  end
end
