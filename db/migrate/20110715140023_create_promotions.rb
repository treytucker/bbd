class CreatePromotions < ActiveRecord::Migration
  def self.up
    create_table :promotions do |t|
      t.string :promotion_name
      t.string :company_name
      t.string :merchant_name
      t.string :code
      t.string :start
      t.string :end
      t.decimal :discount
      t.integer :total_used
      t.integer :max_total_used

      t.timestamps
    end
  end

  def self.down
    drop_table :promotions
  end
end
