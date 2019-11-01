class AddParagraphe7ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe7, :string
  end
end
