class Product < ApplicationRecord
   has_one_attached :photo
   
   validates :title, :description, :price, presence: { message: "No puede estar vacio"} 
   
   belongs_to :category
   belongs_to :user, default: -> { Current.user }
end
