class Quote < ActiveRecord::Base
  validates_presence_of :author, :words_of_wisdom
  validates_length_of :words_of_wisdom, :within => 55..200, :on => :create, :message => "is limited to 55-200 characters."
  
  def self.all_active
    @quotes = self.where("? = active", true)
  end
end



# == Schema Information
#
# Table name: quotes
#
#  id              :integer         not null, primary key
#  author          :string(255)
#  words_of_wisdom :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  active          :boolean
#

