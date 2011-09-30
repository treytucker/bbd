class Category < ActiveRecord::Base
  validates_presence_of :name
  has_many :good_reads
  accepts_nested_attributes_for :good_reads
  
  def self.list_names()
    @all = self.find(:all)
    hash = {}
    @all.each do |f|
      hash.merge!(f.name => f.id)
    end
    return hash
  end

end
# == Schema Information
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

