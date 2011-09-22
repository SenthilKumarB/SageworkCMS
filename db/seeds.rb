# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.create(:login => "admin", :email => "senthil@sagework.com", :password => "admin", :password_confirmation => "admin")
Category.create(:name => "uncategorized", :description => "Uncategorized CMS category - Sagework")

if Rails.env == "test"
  Setting.create(:name => "website_title", :value => "SampleCMS")
  Setting.create(:name => "website_description", :value => "Sample Content Management System")
  Setting.create(:name => "website_email", :value => "senthil@sagework.com")
  Setting.create(:name => "contact_subject", :value => "Sample Contact Form")
  Setting.create(:name => "website_version", :value => "1.0.0")
  Article.create(:title => "Rails", :body_part => "Introduction to Rails", :category_id => 1, :position => 1, :show_home_page => 1, :enable_comment => 1)
  Comment.create(:name => "Sagework", :url => "senthil@sagework.com", :comment => "Test Comments on Rails by Sagework")
  Page.create(:title=> "Rails", :menu_header => "rails", :page_description => "Introduction on Rails - Sagework", :position => 1)
end