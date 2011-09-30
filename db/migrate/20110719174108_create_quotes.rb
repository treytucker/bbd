class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.string :author
      t.string :words_of_wisdom

      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
