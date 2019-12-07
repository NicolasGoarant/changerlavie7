class AddEngagementToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :engagement, :string
  end
end
