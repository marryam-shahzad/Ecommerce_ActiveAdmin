class ProductMaster < ApplicationRecord
  has_many :product_categories
  has_many :categories, through: :product_categories
  belongs_to :brand
  has_many :retailer_products
end
