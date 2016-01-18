class RenameColumnName < ActiveRecord::Migration
  def change
    rename_column :devices, :users_id, :user_id
  end
end
