class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :issue_id

      t.timestamps
    end
  end
end
