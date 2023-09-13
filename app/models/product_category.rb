class ProductCategory < ApplicationRecord
  belongs_to :product_master
  belongs_to :category
end
