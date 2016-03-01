class AddLateStartToPretasks < ActiveRecord::Migration
  def change
    add_column :pretasks, :lateStart, :date
  end
end
