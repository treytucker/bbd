class AddSubtitle1ToHowItWorksBusiness < ActiveRecord::Migration
  def self.up
    add_column :how_it_works_business, :subtitle_1, :text
  end

  def self.down
  end
end
