class AddingCatagoryFieldToGoodDeals < ActiveRecord::Migration
  def self.up
    add_column :good_reads, :catagory_id, :integer
  end

  def self.down
    remove_column :good_reads, :catagory_id
  end
end