class CreateCurrentDeals < ActiveRecord::Migration
  def self.up
    create_table :current_deals do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :current_deals
  end
end
