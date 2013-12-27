class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.integer :width
      t.integer :height
      t.integer :size

      t.timestamps
    end
  end
end
