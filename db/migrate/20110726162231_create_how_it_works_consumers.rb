class CreateHowItWorksConsumers < ActiveRecord::Migration
  def self.up
    create_table :how_it_works_consumers do |t|
      t.string :title
      t.string :header_1
      t.text :content_1
      t.string :header_2
      t.text :content_2
      t.string :header_3
      t.text :content_3
      t.string :header_4
      t.text :content_4

      t.timestamps
    end
  end

  def self.down
    drop_table :how_it_works_consumers
  end
end
