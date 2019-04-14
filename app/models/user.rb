class User < ActiveRecord::Base
    has_secure_password
    validates :name, presence: true 
    validates :name, uniqueness: true  
    has_many :orders 
    has_many :items, through: :orders  

end 