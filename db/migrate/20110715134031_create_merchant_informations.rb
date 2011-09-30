class CreateMerchantInformations < ActiveRecord::Migration
  def self.up
    create_table :merchant_informations do |t|
      t.string :merchant_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :website
      t.integer :office_phone
      t.string :email
      t.string :contact_name
      t.string :industry
      t.string :note

      t.timestamps
    end
  end

  def self.down
    drop_table :merchant_informations
  end
end
