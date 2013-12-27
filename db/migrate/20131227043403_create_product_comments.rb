class CreateProductComments < ActiveRecord::Migration
  def change
    create_table :product_comments do |t|
      t.string :text

      t.timestamps
    end
  end
end
