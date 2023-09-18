# # lib/csv_importable.rb

# require 'csv'

# module CsvImportable
#   extend ActiveSupport::Concern

#   class_methods do
#     def import_from_csv(file_path)
#       CSV.foreach(file_path, headers: true) do |row|
#         create_from_csv_row(row.to_h)
#       end
#     end

#     def create_from_csv_row(data)
#       # Implement logic to create records from CSV row data
#       # Customize this method for each model
#     end
#   end
# end



# lib/csv_importable.rb
module Admin
	module CsvImportable
  extend ActiveSupport::Concern

  class_methods do
    def import_csv(file_path)
      CSV.foreach(file_path, headers: true) do |row|
        # Add logic to process each row and create records as needed
        create_from_csv(row.to_h)
      end
    end

    def model_name
      self.name
    end

    def valid_model_name?(model_name)
    # Add logic to validate that the model_name is a valid model in your application
    model_name.safe_constantize.present?
  	end
  end
end
	end


