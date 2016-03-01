class AddEarlyStartToPretasks < ActiveRecord::Migration
  def change
    add_column :pretasks, :earlyStart, :date
  end
end
