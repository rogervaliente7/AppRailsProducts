class Category < ApplicationRecord
  has_many :products, dependent: :restri
  ct_with_exception
end
