class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :summary
      t.string :photo
      t.string :media
      t.string :content
      t.references :library, foreign_key: true
      t.references :newspaper, foreign_key: true

      t.timestamps
    end
  end
end
