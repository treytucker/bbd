class CreateCustomerDetails < ActiveRecord::Migration
  def self.up
    create_table :customer_details do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :deal_name
      t.string :date_of_deal
      t.string :date_of_purchase
      t.decimal :sale_price
      t.string :industry
      t.string :affiliate_enitity_name
      t.boolean :gender
      t.boolean :home_owner
      t.string :interests

      t.timestamps
    end
  end

  def self.down
    drop_table :customer_details
  end
end
