class CreateLuckyTodays < ActiveRecord::Migration
  def change
    create_table :lucky_todays do |t|
      t.date :applied_at
      t.integer :discountRate

      t.timestamps
    end
  end
end
