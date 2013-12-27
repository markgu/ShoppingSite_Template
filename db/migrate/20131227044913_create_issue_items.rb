class CreateIssueItems < ActiveRecord::Migration
  def change
    create_table :issue_items do |t|
      t.text :comment
      t.date :startDate
      t.date :finishDate

      t.timestamps
    end
  end
end
