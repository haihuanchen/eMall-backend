class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.float :totalAmount
      t.string :shippingAddress
      t.integer :user_id
      
      t.timestamps
    end
  end
end
