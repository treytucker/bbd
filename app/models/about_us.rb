class AboutUs < ActiveRecord::Base
  validates_presence_of :header_1, 
                        :content_1, 
                        :header_2, 
                        :content_2, 
                        :header_3, 
                        :content_3, 
                        :tag_line
                        
  # has_and_belongs_to_many :quote, :join_table => "about_uses_quotes"
  has_many :widgets, :as => :widgetable

end


# == Schema Information
#
# Table name: about_us
#
#  id        :integer         not null, primary key
#  header_1  :string(255)
#  content_1 :text
#  header_2  :string(255)
#  content_2 :text
#  header_3  :string(255)
#  content_3 :text
#  tag_line  :string(255)
#

