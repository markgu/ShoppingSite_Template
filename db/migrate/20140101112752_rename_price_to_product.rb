class RenamePriceToProduct < ActiveRecord::Migration
  def change


    reversible do |dir|
      dir.up do
        change_column :products, :price , :decimal, precision: 10, scale: 2
      end

      dir.down do
        change_column :products, :price , :integer
      end
    end

  end
end
