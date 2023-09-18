# # app/admin/csv_import.rb

# ActiveAdmin.register_page 'CSV Import' do
#   content do
#     render 'admin/csv_import/form'
#   end

#   page_action :import, method: :post do
#     if params[:csv_file].present? && params[:csv_file].respond_to?(:tempfile)
#       file_path = params[:csv_file].tempfile.path
#       CsvImportWorker.perform_async(file_path)
#       redirect_to admin_brands_path, notice: 'CSV file was successfully queued for import.'
#     else
#       redirect_to admin_csv_import_path, alert: 'Please select a CSV file to import.'
#     end
#   end
# end



# # app/admin/csv_import.rb
# require 'csv_importer' # Include the module


# ActiveAdmin.register_page 'CSV Import' do
#   # include Admin::CsvImportable # Include the module here
#   content do
#     render 'admin/csv_import/form'
#   end

#   page_action :import, method: :post do
#     # Enqueue CSV import job for Category model
# if params[:csv_file].present? && params[:csv_file].respond_to?(:tempfile) && params[:model_name].present?
#   file_path = params[:csv_file].tempfile.path
#   model_name = params[:model_name]

#   if CsvImporter.valid_model_name?(model_name)
#     CsvImportWorker.perform_async(file_path, model_name)
#     redirect_to admin_categories_path, notice: 'CSV file was successfully queued for import.'
#   else
#     redirect_to admin_csv_import_path, alert: 'Invalid model selected.'
#   end
# else
#   redirect_to admin_csv_import_path, alert: 'Please select a CSV file and specify a model to import.'
# end

#   end
# end




# app/admin/csv_import.rb
require 'csv_importer' # Include the module

ActiveAdmin.register_page 'CSV Import' do
  # include Admin::CsvImportable # Include the module here
  content do
    render 'admin/csv_import/form'
  end

  page_action :import, method: :post do
    # Enqueue CSV import job for Category model
    if params[:csv_file].present? && params[:csv_file].respond_to?(:tempfile) && params[:model_name].present?
      file_path = params[:csv_file].tempfile.path
      model_name = params[:model_name]

      if CsvImporter.valid_model_name?(model_name)
        CsvImportWorker.perform_async(file_path, model_name)
        # redirect_to admin_categories_path, notice: 'CSV file was successfully queued for import.'
         redirect_path = send("admin_#{model_name.underscore.pluralize}_path")

      redirect_to redirect_path, notice: 'CSV file was successfully queued for import.'
      else
        redirect_to admin_csv_import_path, alert: 'Invalid model selected.'
      end
    else
      redirect_to admin_csv_import_path, alert: 'Please select a CSV file and specify a model to import.'
    end
  end
end



