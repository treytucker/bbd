class CreateAboutUs < ActiveRecord::Migration
  def self.up
    create_table :about_us do |t|
      t.string :title
      t.string :header_1
      t.text :content_1
      t.string :header_2
      t.text :content_2
      t.string :header_3
      t.text :content_3
      t.string :tag_line

      t.timestamps
    end
  end

  def self.down
    drop_table :about_us
  end
end
