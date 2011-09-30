class AddingQuotableToQuotes < ActiveRecord::Migration
  def self.up
    change_table :quotes do |t|
      t.references :quotable, :polymorphic => true
    end
  end

  def self.down
    change_table :quotes do |t|
      t.references :quotable
    end
  end
end