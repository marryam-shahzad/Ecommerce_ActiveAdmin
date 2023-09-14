# app/admin/csv_import.rb

ActiveAdmin.register_page 'CSV Import' do
  content do
    render 'admin/csv_import/form'
  end

  page_action :import, method: :post do
    if params[:csv_file].present? && params[:csv_file].respond_to?(:tempfile)
      file_path = params[:csv_file].tempfile.path
      CsvImportWorker.perform_async(file_path)
      redirect_to admin_brands_path, notice: 'CSV file was successfully queued for import.'
    else
      redirect_to admin_csv_import_path, alert: 'Please select a CSV file to import.'
    end
  end
end
