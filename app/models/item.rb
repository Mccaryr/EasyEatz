class Item < ApplicationRecord
    has_many :order_items
    has_many :orders, through: :order_items  
    scope :vegetarian, -> { where(vegetarian: true) }
    scope :carnivore, -> { where(vegetarian: false) }
    scope :top, -> { order('name ASC limit 1')}

end 

