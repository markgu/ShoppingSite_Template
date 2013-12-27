class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :company
      t.integer :price
      t.integer :inStock
      t.text :info

      t.timestamps
    end
  end
end
