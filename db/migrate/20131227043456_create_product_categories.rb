class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.string :name
      t.integer :depth
      t.belongs_to :product_categories

      t.timestamps
    end
  end
end
