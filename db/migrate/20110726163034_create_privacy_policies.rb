class CreatePrivacyPolicies < ActiveRecord::Migration
  def self.up
    create_table :privacy_policies do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :privacy_policies
  end
end
