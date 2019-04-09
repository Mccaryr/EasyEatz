class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :total
      t.integer :user_id
      t.integer :item_id
      t.string  :shipping_address
    end
  end
end
