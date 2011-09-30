require 'spec_helper'

describe Spreadsheet do
  pending "add some examples to (or delete) #{__FILE__}"
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

