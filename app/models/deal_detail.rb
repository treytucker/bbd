class DealDetail < ActiveRecord::Base
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
# Table name: deal_details
#
#  id                    :integer         not null, primary key
#  company_name          :string(255)
#  merchant_name         :string(255)
#  deal_name             :string(255)
#  date_to_run           :string(255)
#  deal_expiration_date  :string(255)
#  max_total_purchase    :integer
#  max_customer_purchase :integer
#  regular_price         :decimal(, )
#  sale_price            :decimal(, )
#  restrictions          :text
#  highlights            :text
#  full_detail           :text
#  sales_representative  :string(255)
#  phone                 :integer
#  teir_rate             :decimal(, )
#  created_at            :datetime
#  updated_at            :datetime
#

