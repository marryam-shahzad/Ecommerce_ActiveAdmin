# app/workers/csv_import_worker.rb

class CsvImportWorker
  include Sidekiq::Worker


  # def perform(file_path)
  # 	file_path = Rails.root.join('brands.csv')
  	
  #   CSV.foreach(file_path, headers: true) do |row|
  #     # Add logic to process each row and create records as needed
  #     brand_name = row['name']
  #     Brand.create(name: brand_name)
  #   end
  # end

   def perform(file_path, model_name)
    model = model_name.singularize.constantize
    model.import_csv(file_path)
  end
end
