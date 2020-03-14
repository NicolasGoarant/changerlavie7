class ArticleLibrary < ApplicationRecord
  belongs_to :article, optional: true
  belongs_to :library, optional: true
end
