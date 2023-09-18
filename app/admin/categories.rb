ActiveAdmin.register Category do
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
  #     action_item :import_csv, only: :index do
  #   link_to 'Import CSV', admin_csv_import_path
  # end
end
