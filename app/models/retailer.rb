class Retailer < ApplicationRecord
  has_many :retailer_products
  def self.ransackable_attributes(auth_object = nil)
    ["name", "location", "created_at", "updated_at"]
  end


   def self.import_csv(file_path)
    # Read the CSV file
    file_path = Rails.root.join('retailers.csv')
    
    CSV.foreach(file_path, headers: true) do |row|
      retailer_attributes = row.to_hash

      # Create a new Category record with data from the CSV
      retailer = new
      retailer.attributes = retailer_attributes
      retailer.save
    end
  rescue StandardError => e
    # Handle any exceptions that might occur during the import process
    Rails.logger.error("Error importing CSV file for Category: #{e.message}")
  end
end
