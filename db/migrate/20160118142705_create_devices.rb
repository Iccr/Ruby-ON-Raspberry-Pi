class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.datetime :time
      t.references :users

      t.timestamps null: false
    end
  end
end
