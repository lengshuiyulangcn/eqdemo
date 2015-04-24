class AddIssueidToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :issue_id, :integer
  end
end
