class AddParagraphe3ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe3, :string
  end
end
