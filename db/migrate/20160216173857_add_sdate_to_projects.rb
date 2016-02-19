class AddSdateToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :sdate, :date
  end
end
