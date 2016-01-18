class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.datetime :time
      t.users :references

      t.timestamps null: false
    end
  end
end
