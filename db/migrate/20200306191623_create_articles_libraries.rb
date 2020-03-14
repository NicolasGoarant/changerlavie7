class CreateArticlesLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :articles_libraries do |t|

      t.timestamps

      t.belongs_to :library, foreign_key: true
      t.belongs_to :article, foreign_key: true
    end
  end
end
