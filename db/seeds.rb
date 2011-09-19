# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.create(:login => "admin", :email => "senthil@sagework.com", :password => "admin", :password_confirmation => "admin")
Category.create(:name => "uncategoried", :description => "Uncategoried CMS category")