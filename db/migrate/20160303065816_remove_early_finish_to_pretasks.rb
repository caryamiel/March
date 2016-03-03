class RemoveEarlyFinishToPretasks < ActiveRecord::Migration
  def change
    remove_column :pretasks, :earlyFinish, :date
  end
end
