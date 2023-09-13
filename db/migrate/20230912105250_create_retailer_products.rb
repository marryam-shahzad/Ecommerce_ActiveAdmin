class CreateRetailerProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :retailer_products do |t|
      t.references :product_master, null: false, foreign_key: true
      t.references :retailer, null: false, foreign_key: true
      t.decimal :price
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
