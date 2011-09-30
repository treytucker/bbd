class HowItWorksConsumer < ActiveRecord::Base
  validates_presence_of :header_1, :content_1, :header_2, :content_2, :header_3, :content_3, :header_4, :content_4
  

end


# == Schema Information
#
# Table name: how_it_works_consumers
#
#  id        :integer         not null, primary key
#  header_1  :string(255)
#  content_1 :text
#  header_2  :string(255)
#  content_2 :text
#  header_3  :string(255)
#  content_3 :text
#  header_4  :string(255)
#  content_4 :text
#

