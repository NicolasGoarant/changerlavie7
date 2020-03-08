class Library < ApplicationRecord
  has_many :articles, through: :articles_libraries
  has_many :articles_libraries
  belongs_to :user, optional: true

  # after_create :creating_articles_libraries

    # def creating_articles_libraries
    #     articles = self.articles_libraries
    #     if article_library == nil
    #     @article_library = Article_library.new
    #     @article_library.article_id = self
    #     @article_library.save!
    #     self.update(articles_libraries: @article_library)
    #     self.save!
    #     end
    # end
end
