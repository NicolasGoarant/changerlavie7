class Article < ApplicationRecord
  belongs_to :library
  belongs_to :newspaper

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
