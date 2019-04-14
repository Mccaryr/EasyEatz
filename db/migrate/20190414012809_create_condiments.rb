class CreateCondiments < ActiveRecord::Migration[5.2]
  def change
    create_table :condiments do |t|
      t.string :name 
      t.integer :order_id
    end 
  end
end
