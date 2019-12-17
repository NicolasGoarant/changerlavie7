class Article < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :library
  belongs_to :newspaper
  mount_uploader :photo, PhotoUploader
  mount_uploader :media, PhotoUploader
end
