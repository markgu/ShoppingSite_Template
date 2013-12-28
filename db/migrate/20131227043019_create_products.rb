class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :company
      t.integer :price
      t.integer :inStock
      t.text :info
      t.belongs_to :product_category
      t.belongs_to :seller

      t.timestamps
    end
  end
end
