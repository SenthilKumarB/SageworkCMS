class CreateSettings < ActiveRecord::Migration
  def self.up
    create_table :settings do |t|
      t.string :name
      t.text :value
      t.timestamps
    end
    Setting.create(:name => "website_title", :value => "Sagework Software Pvt Ltd")
    Setting.create(:name => "website_description", :value => "Sagework Content Management System")
    Setting.create(:name => "website_email", :value => "senthil@sagework.com")
    Setting.create(:name => "contact_subject", :value => "Sagework Contact Form")
    Setting.create(:name => "website_version", :value => "1.0.0")
  end

  def self.down
    drop_table :settings
  end
end
