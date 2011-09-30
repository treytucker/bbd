=begin
  TODO Add associations with quotes
    I believe the best course of action here would be to go ahead and create a join model just for this one. The rest will stay the same.
=end

class GoodRead < ActiveRecord::Base
  attr_accessible :post, :title, :category_id, :image, :image_delete
  validates_presence_of :post, :title, :category, :message => "can't be blank"
  validates_length_of :title, :within => 3..30, :message => "must be between 3 and 30 characters"
  belongs_to :category
  

# Relates to the images
  has_attached_file :image, 
    :styles => { :thumb => "100x100>", :medium => "315x315>" },
    :storage => :s3, 
    :bucket => 'bigblockdeals',
    :s3_credentials => S3_CREDENTIALS
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  
    before_save :destroy_image?
    
    def image_delete
      @image_delete ||= "0"
    end

    def image_delete=(value)
      @image_delete = value
    end

  private
    def destroy_image?
      self.image.clear if @image_delete == "1"
    end
end

# == Schema Information
#
# Table name: good_reads
#
#  id                 :integer         not null, primary key
#  title              :string(255)
#  post               :text
#  created_at         :datetime
#  updated_at         :datetime
#  category_id        :integer
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#


# == Schema Information
#
# Table name: good_reads
#
#  id                 :integer         not null, primary key
#  title              :string(255)
#  post               :text
#  created_at         :datetime
#  updated_at         :datetime
#  category_id        :integer
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

