# class ProductMaster < ApplicationRecord
#   has_many :product_categories
#   has_many :categories, through: :product_categories
#   belongs_to :brand
#   has_many :retailer_products

#     def self.ransackable_attributes(auth_object = nil)
#     ["brand_id", "created_at", "description", "id", "name", "price", "updated_at"]
#   end
# end




class ProductMaster < ApplicationRecord
  has_many :product_categories
  has_many :categories, through: :product_categories
  belongs_to :brand
  has_many :retailer_products

  def self.ransackable_attributes(auth_object = nil)
    ["brand_id", "created_at", "description", "id", "name", "price", "updated_at"]
  end

  # Define the import_csv method for ProductMaster
  def self.import_csv(file_path)
    # Read the CSV file
    	file_path = Rails.root.join('product_masters.csv')
    
    CSV.foreach(file_path, headers: true) do |row|
      product_attributes = row.to_hash

      # Create a new ProductMaster record with data from the CSV
      product = new
      product.attributes = product_attributes
      product.save
    end
  rescue StandardError => e
    # Handle any exceptions that might occur during the import process
    Rails.logger.error("Error importing CSV file for ProductMaster: #{e.message}")
  end
end
