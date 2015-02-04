class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.integer :department_id
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
