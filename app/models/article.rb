class Article < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :library, optional: true
  belongs_to :newspaper
  mount_uploader :photo, PhotoUploader
  mount_uploader :media, PhotoUploader

  scope :published, -> { where.not(publication: nil).where("publication > ?", Time.zone.now)}

  def properties
    {title: title, summary: summary, url: "/articles/#{id}", img: self.try(:photo).try(:url)}
  end
end
