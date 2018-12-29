class CreateWithdraws < ActiveRecord::Migration[5.2]
  def change
    create_table :withdraws do |t|
      t.integer :amount
      t.integer :user_id
      t.string :payment_type
      t.string :plan
      t.boolean :status
      t.string :email

      t.timestamps
    end
  end
end
