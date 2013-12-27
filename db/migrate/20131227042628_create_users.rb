class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userId
      t.string :firstName
      t.string :lastName
      t.string :password
      t.string :street
      t.string :city
      t.string :state
      t.integer :postcode

      t.timestamps
    end
    add_index :users, :userId, unique: true
  end
end
