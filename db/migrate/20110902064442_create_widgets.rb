class CreateWidgets < ActiveRecord::Migration
  def self.up
    drop_table :widgets
    create_table :widgets do |t|
      t.text :text_1
      t.string :title
      t.text :text_2
      t.string :bottom_title
      t.string :widget_image_file_name
      t.string :widget_image_content_type
      t.integer :widget_image_file_size
      t.datetime :widget_image_updated_at
      t.timestamps
      t.integer :widgetable_id
      t.string  :widgetable_type
    end
  end

  def self.down
    drop_table :widgets
  end
end
