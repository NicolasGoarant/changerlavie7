class RemovePlaceFromArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :place, :string
  end
end
