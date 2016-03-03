class RemoveEarlyStartToPretasks < ActiveRecord::Migration
  def change
    remove_column :pretasks, :earlyStart, :date
  end
end
