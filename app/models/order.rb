class Order  < ApplicationRecord 
    has_many :order_items
    has_many :items, through: :order_items 
    has_many :condiments 
    

    def subtotal
        order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
      end

     
    end 

   