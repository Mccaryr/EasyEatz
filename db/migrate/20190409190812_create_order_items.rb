class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :item_id
      t.integer :quantity
      t.decimal :unit_price 
      t.decimal :total_price 
    end
  end
end
