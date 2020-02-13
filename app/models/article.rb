class Article < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :libraries

  belongs_to :library, optional: true
  belongs_to :newspaper
  mount_uploader :photo, PhotoUploader
  mount_uploader :media, PhotoUploader

  scope :published, -> { where.not(publication: nil).where("publication > ?", Time.zone.now)}

  def properties
    {title: title, content: content, url: "/articles/#{id}", img: self.try(:photo).try(:url)}
  end
end
