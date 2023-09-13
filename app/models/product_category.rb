class ProductCategory < ApplicationRecord
  belongs_to :product_master
  belongs_to :category
   def self.ransackable_attributes(auth_object = nil)
    ["id", "product_master_id", "category_id", "created_at", "updated_at"]
  end
end
