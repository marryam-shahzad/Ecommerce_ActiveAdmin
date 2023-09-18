class Category < ApplicationRecord
  has_many :product_categories
  has_many :product_masters, through: :product_categories
  def self.ransackable_attributes(auth_object = nil)
    ["name", "created_at", "updated_at"]
  end

    # Define the import_csv method
  def self.import_csv(file_path)
    # Read the CSV file
    file_path = Rails.root.join('categories.csv')
    
    CSV.foreach(file_path, headers: true) do |row|
      category_attributes = row.to_hash

      # Create a new Category record with data from the CSV
      category = new
      category.attributes = category_attributes
      category.save
    end
  rescue StandardError => e
    # Handle any exceptions that might occur during the import process
    Rails.logger.error("Error importing CSV file for Category: #{e.message}")
  end

end
