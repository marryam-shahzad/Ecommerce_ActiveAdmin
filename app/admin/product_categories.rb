ActiveAdmin.register ProductCategory do
  permit_params :product_master_id, :category_id

  index do
    selectable_column
    id_column
    column :product_master
    column :category
    actions
  end

  filter :product_master
  filter :category

  form do |f|
    f.inputs do
      f.input :product_master, collection: ProductMaster.all
      f.input :category, collection: Category.all
    end
    f.actions
  end
end
