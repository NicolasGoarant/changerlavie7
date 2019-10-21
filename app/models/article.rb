class Article < ApplicationRecord
  belongs_to :library
  belongs_to :newspaper
end
