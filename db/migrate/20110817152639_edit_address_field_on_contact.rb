class EditAddressFieldOnContact < ActiveRecord::Migration
  def self.up
    add_column :contacts, :address_name, :string
    add_column :contacts, :address_street, :string
    add_column :contacts, :city, :string
    add_column :contacts, :state, :string
    add_column :contacts, :zip_code, :integer
    remove_column :contacts, :address
    remove_timestamps :contacts
  end

  def self.down
    add_timestamps :contacts
    add_column :contacts, :address, :string
    remove_column :contacts, :zip_code
    remove_column :contacts, :state
    remove_column :contacts, :city
    remove_column :contacts, :address_street
    remove_column :contacts, :address_name
  end
end
