CSV.foreach("#{RAILS_ROOT}/public/system/csv_spreadsheets/#{spreadsheet.id}/original/#{spreadsheet.csv_spreadsheet_file_name}") do |row|
  puts row[2]
end

arr_of_arrs = CSV.read("#{RAILS_ROOT}/public/system/csv_spreadsheets/#{s.id}/original/#{s.csv_spreadsheet_file_name}")