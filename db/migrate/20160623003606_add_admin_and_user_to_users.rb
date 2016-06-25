class AddAdminAndUserToUsers < ActiveRecord::Migration
  def up
    add_column :users, :admin, :boolean, null: false, default: false
    add_column :users, :user, :boolean, null: false, default: false
  end

  def down
    remove_column :users, :admin
    remove_column :users, :user
  end
end
