class CreateWhitePapers < ActiveRecord::Migration
  def self.up
    create_table :white_papers do |t|
      t.string :name
      t.string :filename
      t.string :content_type
      t.timestamps
    end
  end

  def self.down
    drop_table :white_papers
  end
end
