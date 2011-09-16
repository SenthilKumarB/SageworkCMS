class AddShowHomePageToArticle < ActiveRecord::Migration
  def self.up
  	add_column :articles, :show_home_page, :boolean
  end

  def self.down
  	remove_column :articles
  end
end
