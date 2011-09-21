class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.string :menu_header
      t.text :page_description
      t.integer :position, :default => "0"
      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
