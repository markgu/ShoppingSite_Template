class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.integer :orderNo
      t.integer :amount
      t.string :address, limit: 200
      t.belongs_to :user

      t.timestamps
    end
  end
end
