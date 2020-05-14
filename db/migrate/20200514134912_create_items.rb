class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.float :price
      t.integer :quantity
      t.string :category
      t.string :image
      t.string :condition
      t.integer :user_id

      t.timestamps
    end
  end
end
