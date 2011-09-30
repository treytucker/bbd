class CreateBusinessLeads < ActiveRecord::Migration
  def self.up
    create_table :business_leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :company
      t.string :website
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.text :message
      
      t.timestamps
    end
    drop_table :business_inquiries
  end

  def self.down
    drop_table :business_leads
  end
end
