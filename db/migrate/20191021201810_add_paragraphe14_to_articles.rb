class AddParagraphe14ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe14, :string
  end
end
