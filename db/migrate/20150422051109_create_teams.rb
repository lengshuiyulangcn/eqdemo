class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :contact_mail

      t.timestamps null: false
    end
  end
end
