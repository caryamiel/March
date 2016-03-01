class AddLateFinishToPretasks < ActiveRecord::Migration
  def change
    add_column :pretasks, :lateFinish, :date
  end
end
