class RetailerProduct < ApplicationRecord
  belongs_to :product_master
  belongs_to :retailer
end
