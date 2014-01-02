class ChangeTableBillingProduct < ActiveRecord::Migration
  def change
    rename_column :billing_products, :subTotal , :price
    rename_column :billing_products, :total, :sub_total
    rename_column :billing_products, :amount, :quantity
  end
end
