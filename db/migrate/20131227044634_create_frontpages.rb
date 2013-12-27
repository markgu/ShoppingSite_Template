class CreateFrontpages < ActiveRecord::Migration
  def change
    create_table :frontpages do |t|
      t.string :display_at

      t.timestamps
    end
  end
end
