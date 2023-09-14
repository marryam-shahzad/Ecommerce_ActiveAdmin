ActiveAdmin.register Brand do
  permit_params :name

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end
  #   action_item :import_csv, only: :index do
  #   link_to 'Import CSV', new_admin_brand_csv_import_path
  # end

  # collection_action :csv_import, method: :post do
  #   file_path = params[:csv_file].tempfile.path
  #   CsvImportWorker.perform_async(file_path)
  #   redirect_to admin_brands_path, notice: 'CSV import has been queued for processing.'
  # end


    action_item :import_csv, only: :index do
    link_to 'Import CSV', admin_csv_import_path
  end
end
