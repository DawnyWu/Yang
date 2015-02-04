class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :sex
      t.integer :age
      t.string :email
      t.integer :department_id

      t.timestamps null: false
    end
  end
end
