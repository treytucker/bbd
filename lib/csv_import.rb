class CsvImport

  def self.push_that_into_the_model(csv)
    # Sets the error count
    error = 0

    # Gets the model from active record
    ar_model = ActiveRecord.const_get(csv.table)

    # Gets all the column names
    column_names = ar_model.column_names

    # Eliminates the unneeded data fields.
    # The usable columns are located in the "column_names" variable.
    @bad_columns = [ "id", "created_at", "updated_at" ]
    @bad_columns.each do |f|
      column_names.delete(f)
    end
    
    # This is where the true magic happens
    # The function goes in and creates a new entry for each row of the csv
    CSV.foreach("#{RAILS_ROOT}/public/system/csv_spreadsheets/#{csv.id}/original/#{csv.csv_spreadsheet_file_name}") do |row|
      hash = {}
      i=0
      column_names.each do |f|
        hash.merge!(f.to_sym => "#{row[i]}")
        i+=1
      end
      @entry = ar_model.new(hash)
      if @entry.valid?
        @entry.save
        # put something into a log
      else
        error += 1
        # => puts error into the log something into the log
      end
    end
    if error == 0
      csv.destroy
    end
  end
end