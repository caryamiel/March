class RemoveLateStartToPretasks < ActiveRecord::Migration
  def change
    remove_column :pretasks, :lateStart, :date
  end
end
