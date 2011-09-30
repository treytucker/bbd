require 'spec_helper'

describe Widget do
  pending "add some examples to (or delete) #{__FILE__}"
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

