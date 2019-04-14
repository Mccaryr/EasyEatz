class Item < ApplicationRecord
    has_many :order_items
    has_many :orders, through: :order_items  
    scope :vegetarian, -> { where(vegetarian: true) }

    def self.vegetarian 
        where(vegetarian: true)
    end 
end 