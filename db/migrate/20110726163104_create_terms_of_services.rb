class CreateTermsOfServices < ActiveRecord::Migration
  def self.up
    create_table :terms_of_services do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :terms_of_services
  end
end
