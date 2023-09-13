class RetailerProduct < ApplicationRecord
  belongs_to :product_master
  belongs_to :retailer
  def self.ransackable_attributes(auth_object = nil)
    ["id", "product_master_id", "retailer_id", "price", "stock_quantity", "created_at", "updated_at"]
  end
end
