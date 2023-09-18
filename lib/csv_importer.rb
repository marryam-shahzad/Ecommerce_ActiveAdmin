# lib/csv_importer.rb

module CsvImporter
  def self.valid_model_name?(model_name)
    # Implement your logic to validate the model name here
    # For example, you can check if the model_name matches the names of your models
    # Return true if it's a valid model name, otherwise false
    model_name.in?(['Brand', 'ProductMaster', 'Categories', 'Retailers'])
    # model_name.downcase == File.basename(file_path, ".csv").downcase # Example: Validating against two model names
  end
end
