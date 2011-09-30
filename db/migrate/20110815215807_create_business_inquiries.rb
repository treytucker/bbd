class CreateBusinessInquiries < ActiveRecord::Migration
  def self.up
    create_table :business_inquiries do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :company_name
      t.string :website
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :business_inquiries
  end
end
