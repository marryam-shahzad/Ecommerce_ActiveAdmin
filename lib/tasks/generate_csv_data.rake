# lib/tasks/generate_csv_data.rake

require 'csv'
require 'faker'

namespace :generate_csv_data do
  desc "Generate and export random data to CSV files"
  task generate_data: :environment do
    generate_brands_csv
    # Add similar tasks for other models here if needed
  end

  def generate_brands_csv
    csv_data = []
    100.times do
      brand_name = Faker::Company.unique.name
      csv_data << [brand_name]
    end

    export_to_csv('brands.csv', ['name'], csv_data)
  end

  # Define similar methods for other models here if needed

  def export_to_csv(file_name, headers, data)
    CSV.open(file_name, 'w', write_headers: true, headers: headers) do |csv|
      data.each { |row| csv << row }
    end
  end
end
