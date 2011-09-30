class FixingCatagories < ActiveRecord::Migration
  def self.up
    rename_table :catagories, :categories
    rename_column :good_reads, :catagory_id, :category_id
  end

  def self.down
    rename_column :good_reads, :category_id, :catagory_id
    rename_table :categories, :catagories
  end
end