class CreateShoppingCarts < ActiveRecord::Migration
  def change
    create_table :shopping_carts do |t|
      t.integer :amount
      t.belongs_to :user

      t.timestamps
    end
  end
end
