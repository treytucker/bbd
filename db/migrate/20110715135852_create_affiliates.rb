class CreateAffiliates < ActiveRecord::Migration
  def self.up
    create_table :affiliates do |t|
      t.string :entity_name
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.decimal :sales_price
      t.integer :merchant
      t.integer :number_sold
      t.decimal :total_revenue

      t.timestamps
    end
  end

  def self.down
    drop_table :affiliates
  end
end
