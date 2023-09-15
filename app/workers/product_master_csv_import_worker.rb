# app/workers/product_master_csv_import_worker.rb

class ProductMasterCsvImportWorker
  include Sidekiq::Worker

  def perform(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      create_product_master_from_csv_row(row)
    end
  end

  private

  def create_product_master_from_csv_row(row)
    # Add logic to create ProductMaster records from CSV row data
    # Customize this method to match your table attributes
    product_name = row['name']
    description = row['description']
    price = row['price']
    brand_name = row['brand_name']

    # Find or create the associated brand
    brand = Brand.find_or_create_by(name: brand_name)

    # Create the ProductMaster record
    ProductMaster.create(
      name: product_name,
      description: description,
      price: price,
      brand: brand
    )
  end
end
