class Library < ApplicationRecord
  has_many :articles, dependent: :destroy
end
