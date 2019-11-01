class AddParagraphe8ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe8, :string
  end
end
