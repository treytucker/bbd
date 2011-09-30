class CreateDealDetails < ActiveRecord::Migration
  def self.up
    create_table :deal_details do |t|
      t.string :company_name
      t.string :merchant_name
      t.string :deal_name
      t.string :date_to_run
      t.string :deal_expiration_date
      t.integer :max_total_purchase
      t.integer :max_customer_purchase
      t.decimal :regular_price
      t.decimal :sale_price
      t.text :restrictions
      t.text :highlights
      t.text :full_detail
      t.string :sales_representative
      t.integer :phone
      t.decimal :teir_rate

      t.timestamps
    end
  end

  def self.down
    drop_table :deal_details
  end
end
