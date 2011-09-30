class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :title
      t.string :header_1
      t.string :link_1
      t.string :header_2
      t.string :link_2
      t.string :number
      t.text :address

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
