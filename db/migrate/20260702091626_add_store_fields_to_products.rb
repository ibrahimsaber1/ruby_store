class AddStoreFieldsToProducts < ActiveRecord::Migration[8.1]
  def change
    add_column :products, :price, :decimal
    add_column :products, :stock_quantity, :integer
    add_column :products, :sku, :string
    add_column :products, :slug, :string
    add_reference :products, :category, null: false, foreign_key: true
  end
end
