class RemoveSdateToProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :sdate, :date
  end
end
