class AddRoomidToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :room_id, :integer
  end
end
