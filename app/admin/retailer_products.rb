ActiveAdmin.register RetailerProduct do
  permit_params :product_master_id, :retailer_id, :price, :stock_quantity

  index do
    selectable_column
    id_column
    column :product_master
    column :retailer
    column :price
    column :stock_quantity
    actions
  end

  filter :product_master
  filter :retailer
  filter :price
  filter :stock_quantity

  form do |f|
    f.inputs do
      f.input :product_master, collection: ProductMaster.all
      f.input :retailer, collection: Retailer.all
      f.input :price
      f.input :stock_quantity
    end
    f.actions
  end
end
