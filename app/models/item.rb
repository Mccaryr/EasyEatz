class Item < ApplicationRecord
    has_many :order_items
    has_many :condiments 
    has_many :orders, through: :order_items  
    

    def self.vegetarian 
        where(vegetarian: true)
    end 

    def self.carnivore
        where(vegetarian: false)
    end 
end 