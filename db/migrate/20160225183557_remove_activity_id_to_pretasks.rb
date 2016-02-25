class RemoveActivityIdToPretasks < ActiveRecord::Migration
  def change
    remove_column :pretasks, :activityID, :string
  end
end
