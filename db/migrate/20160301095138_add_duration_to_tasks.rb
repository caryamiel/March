class AddDurationToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :duration, :string
  end
end
