class OrderItem < ApplicationRecord 
belongs_to :order   
belongs_to :item
validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

    def unit_price 
        if persisted? 
            self[:unit_price]
        else 
            item.price 
        end 
    end 

    def total_price 
        unit_price * :quantity
    end 

end 