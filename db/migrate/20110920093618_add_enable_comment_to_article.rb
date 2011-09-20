class AddEnableCommentToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :enable_comment, :boolean
  end

  def self.down
    remove_column :articles, :enable_comment
  end
end
