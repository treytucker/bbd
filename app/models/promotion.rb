class Promotion < ActiveRecord::Base
  attr_reader :table
  
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
# Table name: promotions
#
#  id             :integer         not null, primary key
#  promotion_name :string(255)
#  company_name   :string(255)
#  merchant_name  :string(255)
#  code           :string(255)
#  start          :string(255)
#  end            :string(255)
#  discount       :decimal(, )
#  total_used     :integer
#  max_total_used :integer
#  created_at     :datetime
#  updated_at     :datetime
#


# == Schema Information
#
# Table name: promotions
#
#  id             :integer         not null, primary key
#  promotion_name :string(255)
#  company_name   :string(255)
#  merchant_name  :string(255)
#  code           :string(255)
#  start          :string(255)
#  end            :string(255)
#  discount       :decimal(, )
#  total_used     :integer
#  max_total_used :integer
#  created_at     :datetime
#  updated_at     :datetime
#

