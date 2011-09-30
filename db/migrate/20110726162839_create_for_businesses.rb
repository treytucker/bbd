class CreateForBusinesses < ActiveRecord::Migration
  def self.up
    create_table :for_businesses do |t|
      t.string :title
      t.string :header
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :for_businesses
  end
end
