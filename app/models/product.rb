class Product < ApplicationRecord
   has_one_attached :photo
   
   validates :title, :description, :price, presence: { message: "No puede estar vacio"} 
end
