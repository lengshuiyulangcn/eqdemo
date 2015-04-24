class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.string :status

      t.timestamps null: false
    end
  end
end
