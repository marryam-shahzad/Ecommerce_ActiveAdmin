# app/admin/product_masters.rb

ActiveAdmin.register ProductMaster do
  permit_params :name, :description, :price, :brand_id

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :price
    column :brand
    actions
  end

  filter :name
  filter :brand, as: :select, collection: Brand.all

  form do |f|
    f.inputs 'Product Details' do
      f.input :name
      f.input :description
      f.input :price
      f.input :brand
    end
    f.actions
  end
  #   action_item :import_csv, only: :index do
  #   link_to 'Import CSV', admin_csv_import_path
  # end

  # action_item :import_csv, only: :index do
  #   link_to 'Import CSV', admin_product_master_csv_import_path
  # end

  # # Define a custom import action (similar to what you did for the Brand table)
  # collection_action :csv_import, method: :post do
  #   if params[:csv_file].present? && params[:csv_file].respond_to?(:tempfile)
  #     file_path = params[:csv_file].tempfile.path
  #     ProductMasterCsvImportWorker.perform_async(file_path)
  #     redirect_to admin_product_masters_path, notice: 'CSV file was successfully queued for import.'
  #   else
  #     redirect_to admin_product_masters_path, alert: 'Please select a CSV file to import.'
  #   end
  # end
end
