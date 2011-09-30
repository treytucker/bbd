class CsvImportingJob < Struct.new(:spreadsheet_id)
  
  def perform
    @csv = Spreadsheet.find(spreadsheet_id)
    CsvImport.push_that_into_the_model(@csv)
  end
  
end