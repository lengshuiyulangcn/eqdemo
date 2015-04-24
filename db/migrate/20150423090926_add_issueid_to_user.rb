class AddIssueidToUser < ActiveRecord::Migration
  def change
    add_column :users, :issue_id, :integer
  end
end
