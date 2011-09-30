class AddingImagesToGoodReads < ActiveRecord::Migration
  def self.up
    add_column :good_reads, :image_file_name, :string
    add_column :good_reads, :image_content_type, :string
    add_column :good_reads, :image_file_size, :integer
    add_column :good_reads, :image_updated_at, :datetime
  end

  def self.down
    remove_column :good_reads, :image_updated_at
    remove_column :good_reads, :image_file_size
    remove_column :good_reads, :image_content_type
    remove_column :good_reads, :image_file_name
  end
end