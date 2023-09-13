class Category < ApplicationRecord
  has_many :product_categories
  has_many :product_masters, through: :product_categories
end
