class CreateItemOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :item_orders do |t|
      t.integer :item_id
      t.integer :order_id

      t.timestamps
    end
  end
end
