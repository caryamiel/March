class CreateTaskdepends < ActiveRecord::Migration
  def change
    create_table :taskdepends do |t|
      t.integer :task_id
      t.integer :taskdependto_id

      t.timestamps null: false
    end
  end
end
