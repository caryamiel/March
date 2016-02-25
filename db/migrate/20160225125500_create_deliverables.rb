class CreateDeliverables < ActiveRecord::Migration
  def change
    create_table :deliverables do |t|
      t.string :name
      t.string :attachment
      t.string :description

      t.timestamps null: false
    end
  end
end
