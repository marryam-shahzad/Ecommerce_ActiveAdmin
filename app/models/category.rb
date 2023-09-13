class Category < ApplicationRecord
  has_many :product_categories
  has_many :product_masters, through: :product_categories
  def self.ransackable_attributes(auth_object = nil)
    ["name", "created_at", "updated_at"]
  end
end
