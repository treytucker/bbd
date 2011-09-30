=begin
  TODO Add in validations.
  TODO Change Sizes of the Images
=end

class Widget < ActiveRecord::Base
  attr_accessible :text_1, :title, :text_2, :bottom_title, :widget_image, :image_delete, :widgetable_id, :widgetable_type, :good_read_active, :contact_active, :about_us_active, :current_deal_active, :recent_deal_active, :privacy_policy_active, :for_business_active, :terms_of_service_active, :good_read_order, :contact_order, :about_us_order, :current_deal_order, :recent_deal_order, :privacy_policy_order, :for_business_order, :terms_of_service_order
  has_attached_file :widget_image, :styles => { :mini => "300x300>", :side_bar => "200x>" }


  before_save :destroy_image?

  def image_delete
    @image_delete ||= "0"
  end

  def image_delete=(value)
    @image_delete = value
  end

  private
    def destroy_image?
      self.widget_image.clear if @image_delete == "1"
    end

end
# == Schema Information
#
# Table name: widgets
#
#  id                        :integer         not null, primary key
#  text_1                    :text
#  title                     :string(255)
#  text_2                    :text
#  bottom_title              :string(255)
#  widget_image_file_name    :string(255)
#  widget_image_content_type :string(255)
#  widget_image_file_size    :integer
#  widget_image_updated_at   :datetime
#  created_at                :datetime
#  updated_at                :datetime
#  widgetable_id             :integer
#  widgetable_type           :string(255)
#  good_read_active          :boolean
#  contact_active            :boolean
#  about_us_active           :boolean
#  current_deal_active       :boolean
#  recent_deal_active        :boolean
#  privacy_policy_active     :boolean
#  for_business_active       :boolean
#  terms_of_service_active   :boolean
#  good_read_order           :integer
#  contact_order             :integer
#  about_us_order            :integer
#  current_deal_order        :integer
#  recent_deal_order         :integer
#  privacy_policy_order      :integer
#  for_business_order        :integer
#  terms_of_service_order    :integer
#

