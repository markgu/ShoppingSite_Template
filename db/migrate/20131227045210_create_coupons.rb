class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.integer :amount
      t.date :expire
      t.string :givenBy
      t.belongs_to :user

      t.timestamps
    end
  end
end
