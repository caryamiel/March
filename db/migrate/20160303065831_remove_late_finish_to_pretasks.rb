class RemoveLateFinishToPretasks < ActiveRecord::Migration
  def change
    remove_column :pretasks, :lateFinish, :date
  end
end
