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
end
