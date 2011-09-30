class CreateGoodReads < ActiveRecord::Migration
  def self.up
    create_table :good_reads do |t|
      t.string :title
      t.text :post

      t.timestamps
    end
  end

  def self.down
    drop_table :good_reads
  end
end
