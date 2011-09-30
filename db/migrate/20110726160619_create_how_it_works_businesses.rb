class CreateHowItWorksBusinesses < ActiveRecord::Migration
  def self.up
    create_table :how_it_works_businesses do |t|
      t.string :title
      t.string :main_header
      t.text :main_content
      t.string :subheader_1
      t.text :subcontent_1
      t.string :subheader_2
      t.text :subcontent_2
      t.string :subheader_3
      t.text :subcontent_3
      t.string :subheader_4
      t.text :subcontent_4
      t.string :subheader_5
      t.text :subcontent_5
      t.string :subheader_6
      t.text :subcontent_6
      
      t.timestamps
    end
  end

  def self.down
    drop_table :how_it_works_businesses
  end
end
