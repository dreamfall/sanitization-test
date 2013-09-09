class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name
      t.integer :current_version_id

      t.timestamps
    end
  end
end
