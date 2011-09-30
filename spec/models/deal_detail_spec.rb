require 'spec_helper'

describe DealDetail do
  pending "add some examples to (or delete) #{__FILE__}"
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

