class CreateSendattaches < ActiveRecord::Migration
  def change
    create_table :sendattaches do |t|
      t.string :name
      t.string :email
      t.string :description
      t.string :attachment

      t.timestamps null: false
    end
  end
end
