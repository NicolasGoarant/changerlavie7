class AddParagraphe19ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe19, :string
  end
end
