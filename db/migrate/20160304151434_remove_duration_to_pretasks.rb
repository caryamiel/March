class RemoveDurationToPretasks < ActiveRecord::Migration
  def change
    remove_column :pretasks, :duration, :string
  end
end
