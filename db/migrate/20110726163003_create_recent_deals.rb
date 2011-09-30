class CreateRecentDeals < ActiveRecord::Migration
  def self.up
    create_table :recent_deals do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :recent_deals
  end
end
