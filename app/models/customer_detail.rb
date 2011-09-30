class CustomerDetail < ActiveRecord::Base
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
# Table name: customer_details
#
#  id                     :integer         not null, primary key
#  name                   :string(255)
#  email                  :string(255)
#  address                :string(255)
#  city                   :string(255)
#  state                  :string(255)
#  zip                    :integer
#  deal_name              :string(255)
#  date_of_deal           :string(255)
#  date_of_purchase       :string(255)
#  sale_price             :decimal(, )
#  industry               :string(255)
#  affiliate_enitity_name :string(255)
#  gender                 :boolean
#  home_owner             :boolean
#  interests              :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

