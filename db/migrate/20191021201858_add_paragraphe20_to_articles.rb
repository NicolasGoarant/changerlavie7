class AddParagraphe20ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe20, :string
  end
end
