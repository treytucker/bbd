class TermsOfService < ActiveRecord::Base
  validates_presence_of :content
  

end


# == Schema Information
#
# Table name: terms_of_services
#
#  id      :integer         not null, primary key
#  content :text
#

