class CreateProductComments < ActiveRecord::Migration
  def change
    create_table :product_comments do |t|
      t.string :text
      t.belongs_to :user
      t.belongs_to :product

      t.timestamps
    end
  end
end
