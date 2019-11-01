class AddParagraphe12ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe12, :string
  end
end
