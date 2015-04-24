class AddTeamidToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :team_id, :integer
  end
end
