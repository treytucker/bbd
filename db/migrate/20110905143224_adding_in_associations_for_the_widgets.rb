class AddingInAssociationsForTheWidgets < ActiveRecord::Migration
  def self.up
    add_column :widgets, :good_read_active, :boolean
    add_column :widgets, :contact_active, :boolean
    add_column :widgets, :about_us_active, :boolean
    add_column :widgets, :current_deal_active, :boolean
    add_column :widgets, :recent_deal_active, :boolean
    add_column :widgets, :privacy_policy_active, :boolean
    add_column :widgets, :for_business_active, :boolean
    add_column :widgets, :terms_of_service_active, :boolean
    add_column :widgets, :good_read_order, :integer
    add_column :widgets, :contact_order, :integer
    add_column :widgets, :about_us_order, :integer
    add_column :widgets, :current_deal_order, :integer
    add_column :widgets, :recent_deal_order, :integer
    add_column :widgets, :privacy_policy_order, :integer
    add_column :widgets, :for_business_order, :integer
    add_column :widgets, :terms_of_service_order, :integer
    add_column :widgets, :wimage_file_name,    :string
    add_column :widgets, :wimage_content_type, :string
    add_column :widgets, :wimage_file_size,    :integer
    add_column :widgets, :wimage_updated_at,   :datetime
  end

  def self.down
    remove_column :table_name, :column_name
    remove_column :widget, :good_read_active
    remove_column :widget, :contact_active
    remove_column :widget, :about_us_active
    remove_column :widget, :current_deal_active
    remove_column :widget, :recent_deal_active
    remove_column :widget, :privacy_policy_active
    remove_column :widget, :for_business_active
    remove_column :widget, :terms_of_service_active
    remove_column :widget, :good_read_order
    remove_column :widget, :contact_order
    remove_column :widget, :about_us_order
    remove_column :widget, :current_deal_order
    remove_column :widget, :recent_deal_order
    remove_column :widget, :privacy_policy_order
    remove_column :widget, :for_business_order
    remove_column :widget, :terms_of_service_order
    remove_column :widget, :wimage_file_name
    remove_column :widget, :wimage_content_type
    remove_column :widget, :wimage_file_size
    remove_column :widget, :wimage_updated_at
  end
end