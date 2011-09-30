class MerchantInformation < ActiveRecord::Base
  def self.list_columns
    column_names = self.column_names
    @bad_columns = [ "id", "created_at", "updated_at" ]
    @bad_columns.each do |f|
      column_names.delete(f)
    end
    return column_names
  end
  
  def self.hashify
    @model_hash = self.find(:all).to_a
    result = {}
    @model_hash.each do |f|
      array = []
      self.list_columns.each do |i|
        @array = [f[i]]
        array.concat(@array)
      end
      result.merge!(f.id => array)
    end
    return result
  end
end

# == Schema Information
#
# Table name: merchant_informations
#
#  id            :integer         not null, primary key
#  merchant_name :string(255)
#  address       :string(255)
#  city          :string(255)
#  state         :string(255)
#  zip           :integer
#  website       :string(255)
#  office_phone  :integer
#  email         :string(255)
#  contact_name  :string(255)
#  industry      :string(255)
#  note          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

