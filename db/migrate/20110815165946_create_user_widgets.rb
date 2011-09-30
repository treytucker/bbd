class CreateUserWidgets < ActiveRecord::Migration
  def self.up
    create_table :user_widgets do |t|
      t.string :useless_text

      t.timestamps
    end
  end

  def self.down
    drop_table :user_widgets
  end
end
