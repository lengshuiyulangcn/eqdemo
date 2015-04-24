class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
  #    t.column :status, :integer, default: 0
      t.timestamps null: false
    end
  end
end
