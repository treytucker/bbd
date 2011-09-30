class Spreadsheet < ActiveRecord::Base
  has_attached_file :csv_spreadsheet
  validates_attachment_presence :csv_spreadsheet
  
  def self.gather_thine_spreadsheets
    spreadsheets = ["Affiliate", "CustomerDetail", "CustomersSummary", "DealDetail", "MerchantInformation", "Promotion"]
  end
  
end

# == Schema Information
#
# Table name: spreadsheets
#
#  id                           :integer         not null, primary key
#  table                        :string(255)
#  csv_spreadsheet_file_name    :string(255)
#  csv_spreadsheet_content_type :string(255)
#  csv_spreadsheet_file_size    :integer
#  csv_spreadsheet_updated_at   :datetime
#  created_at                   :datetime
#  updated_at                   :datetime
#

