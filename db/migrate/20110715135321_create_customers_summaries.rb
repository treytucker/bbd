class CreateCustomersSummaries < ActiveRecord::Migration
  def self.up
    create_table :customers_summaries do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :number_purchased
      t.integer :referr_a_friend_credits
      t.boolean :was_referral
      t.string :creation_date

      t.timestamps
    end
  end

  def self.down
    drop_table :customers_summaries
  end
end
