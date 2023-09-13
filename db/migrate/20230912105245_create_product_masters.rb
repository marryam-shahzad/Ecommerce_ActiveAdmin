class CreateProductMasters < ActiveRecord::Migration[7.0]
  def change
    create_table :product_masters do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
