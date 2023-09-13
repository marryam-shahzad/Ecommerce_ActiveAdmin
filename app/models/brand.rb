class Brand < ApplicationRecord
  has_many :product_masters
   def self.ransackable_attributes(auth_object = nil)
    ["name", "created_at", "updated_at"]
  end

end
