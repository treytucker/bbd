class PrivacyPolicy < ActiveRecord::Base
  validates_presence_of :content
  

end


# == Schema Information
#
# Table name: privacy_policies
#
#  id      :integer         not null, primary key
#  content :text
#

