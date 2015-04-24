class AddTeamanduseridToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :user_id, :integer
    add_column :issues, :equipment_id, :integer
  end
end
