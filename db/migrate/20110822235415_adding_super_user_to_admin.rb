class AddingSuperUserToAdmin < ActiveRecord::Migration
  def self.up
    add_column :admins, :super_user, :boolean
  end

  def self.down
    remove_column :admins, :super_user
  end
end