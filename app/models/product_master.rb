class ProductMaster < ApplicationRecord
  has_many :product_categories
  has_many :categories, through: :product_categories
  belongs_to :brand
  has_many :retailer_products

    def self.ransackable_attributes(auth_object = nil)
    ["brand_id", "created_at", "description", "id", "name", "price", "updated_at"]
  end
end
