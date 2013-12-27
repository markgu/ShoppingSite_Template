class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :tel
      t.string :address

      t.timestamps
    end
  end
end
