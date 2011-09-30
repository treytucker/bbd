class RemoveUnneededFields < ActiveRecord::Migration
  def self.up
    remove_timestamps :about_us
    remove_column :about_us, :title
    remove_timestamps :how_it_works_businesses
    remove_column :how_it_works_businesses, :title
    remove_timestamps :how_it_works_consumers
    remove_column :how_it_works_consumers, :title
    remove_timestamps :current_deals
    remove_column :current_deals, :title
    remove_timestamps :recent_deals
    remove_column :recent_deals, :title
    remove_timestamps :privacy_policies
    remove_timestamps :terms_of_services
    #remove_timestamps :contacts
    remove_column :privacy_policies, :title
    remove_column :terms_of_services, :title
    remove_column :contacts, :title
  end

  def self.down
  end
end