class CreateWidgetTypes < ActiveRecord::Migration
  def self.up
    create_table :widget_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :widget_types
  end
end
