class CreateSearchHistories < ActiveRecord::Migration
  def change
    create_table :search_histories do |t|
      t.string :keyword
      t.integer :ranking
      t.integer :change
      t.boolean :new

      t.timestamps
    end
  end
end
