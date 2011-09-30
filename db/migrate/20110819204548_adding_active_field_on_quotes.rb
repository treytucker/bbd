class AddingActiveFieldOnQuotes < ActiveRecord::Migration
  def self.up
    add_column :quotes, :active, :boolean
    remove_column :quotes, :quotable_id
    remove_column :quotes, :quotable_type
  end

  def self.down
    add_column :quotes, :quotable_type, :string
    add_column :quotes, :quotable_id, :integer
    remove_column :quotes, :active
  end
end
