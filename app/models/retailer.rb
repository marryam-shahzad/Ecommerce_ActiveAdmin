class Retailer < ApplicationRecord
  has_many :retailer_products
  def self.ransackable_attributes(auth_object = nil)
    ["name", "location", "created_at", "updated_at"]
  end
end
