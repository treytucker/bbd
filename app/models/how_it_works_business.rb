class HowItWorksBusiness < ActiveRecord::Base
  validates_presence_of :main_header, :main_content, :subheader_1, :subcontent_1, :subheader_2, :subcontent_2, :subheader_3, :subcontent_3, :subheader_4, :subcontent_4, :subheader_5, :subcontent_5, :subheader_6, :subcontent_6
  

end


# == Schema Information
#
# Table name: how_it_works_businesses
#
#  id           :integer         not null, primary key
#  main_header  :string(255)
#  main_content :text
#  subheader_1  :string(255)
#  subcontent_1 :text
#  subheader_2  :string(255)
#  subcontent_2 :text
#  subheader_3  :string(255)
#  subcontent_3 :text
#  subheader_4  :string(255)
#  subcontent_4 :text
#  subheader_5  :string(255)
#  subcontent_5 :text
#  subheader_6  :string(255)
#  subcontent_6 :text
#

