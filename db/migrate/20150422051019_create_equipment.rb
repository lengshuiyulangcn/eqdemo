class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :room_number
      t.string :equipment_name

      t.timestamps null: false
    end
  end
end
