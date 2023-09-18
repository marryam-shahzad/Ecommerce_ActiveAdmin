class Brand < ApplicationRecord
  has_many :product_masters
   def self.ransackable_attributes(auth_object = nil)
    ["name", "created_at", "updated_at"]
  end
  # Define the import_csv method
  def self.import_csv(file_path)
    # Read the CSV file
   	file_path = Rails.root.join('brands.csv')

    CSV.foreach(file_path, headers: true) do |row|

      brand_attributes = row.to_hash

      # Create a new Brand record with data from the CSV
      brand = new
      brand.attributes = brand_attributes
      brand.save
    end
  rescue StandardError => e
    # Handle any exceptions that might occur during the import process
    Rails.logger.error("Error importing CSV file: #{e.message}")
  end

end
