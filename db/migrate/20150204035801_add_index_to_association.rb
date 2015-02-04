class AddIndexToAssociation < ActiveRecord::Migration
  def change
  	add_index :associations, [:department_id,:project_id],:unique => true
  end
end
