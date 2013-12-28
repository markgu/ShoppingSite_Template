class CreateBillingProducts < ActiveRecord::Migration
  def change
    create_table :billing_products do |t|
      t.string :productName
      t.integer :amount
      t.integer :subTotal
      t.integer :total
      t.belongs_to :billing

      t.timestamps
    end
  end
end
