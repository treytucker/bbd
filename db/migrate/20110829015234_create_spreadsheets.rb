class CreateSpreadsheets < ActiveRecord::Migration
  def self.up
    create_table :spreadsheets do |t|
      t.string :table
      t.string :csv_spreadsheet_file_name
      t.string :csv_spreadsheet_content_type
      t.integer :csv_spreadsheet_file_size
      t.datetime :csv_spreadsheet_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :spreadsheets
  end
end
